require 'uri'
require 'net/http'

class Feed < ActiveRecord::Base
  has_many :subscriptions, dependent: :destroy
  has_many :episodes, dependent: :destroy
  before_validation :ensure_url_contains_a_podcast_feed, before: :create
  after_create :update_from_server

  def update_from_server
    begin
      # Get and hash the feed info
      feed_xml = get_content_from_url #Will error if invalid URL or network problems
      cleand_xml = clean_xml_for_use(feed_xml)
      feed_hash = Hash.from_xml(cleand_xml) #Will error if not valid XML
      channel_data = feed_hash["rss"]["channel"]
      valid_episodes_from_xml = channel_data["item"].select {|item| item_is_valid_episode(item)}

      ActiveRecord::Base.transaction do
        # Update feed
        self.title = channel_data["title"] || ""
        self.description = format_desciption(channel_data["description"]) || ""
        self.save

        # Clear old episodes
        episode_guids_to_keep = channel_data["item"].map {|item| item["guid"]}
        self.episodes.where.not(guid: episode_guids_to_keep).destroy_all

        # Create new episodes
        existing_episode_guids = self.episodes.map {|e| e.guid}
        valid_episodes_from_xml.each do |item|
          unless existing_episode_guids.include? item["guid"]
            self.episodes.create(
                title: item["title"],
                link: item["link"] || "",
                description: format_desciption(item["description"]),
                pubDate: item["pubDate"] || item["date"],
                audio_url: item["enclosure"]["url"],
                audio_type: item["enclosure"]["type"],
                guid: item["guid"]
            )
          end
        end
      end
      true
    rescue
      false
    end
  end

private

  # We need to remove CDATA tags and sanitize the contents before parsing
  def clean_xml_for_use(xml)
    pattern = /(?<cdata>\<\!\[CDATA\[(?<interior>[^(<!CDATA)])*\]\]\>)/
    return xml.gsub(pattern) { ActionView::Base.full_sanitizer.sanitize($2) }
  end

  def ensure_url_contains_a_podcast_feed
    begin
      # Get and hash the feed info
      feed_xml = get_content_from_url # Will error if bad url or network issues
      cleand_xml = clean_xml_for_use(feed_xml)
      feed_hash = Hash.from_xml(cleand_xml) #Will error if not valid XML
      raise "Not well formed feed" unless feed_hash_is_well_formed(feed_hash)
      true
    rescue Exception => e
      errors.add :feed_url, "This URL doesn't contain a valid podcast feed."
      return false 
    end
  end

  # Downloads feed xml 
  def get_content_from_url
    uri = URI(feed_url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  # Checks hash to ensure it has all the elements we will need to parse this as a podcast feed.
  def feed_hash_is_well_formed(feed_hash)
    begin
      valid_items = feed_hash["rss"]["channel"]["item"].select {|item| item_is_valid_episode(item)}

      return feed_hash["rss"]["channel"].key?("title") \
          && feed_hash["rss"]["channel"].key?("description") \
          && valid_items.any?
    rescue Exception => e
      logger.debug "======================================="
      logger.debug e.message
      logger.debug "======================================="

      false
    end
  end

  def item_is_valid_episode(item)
    item.class == Hash \
      && item.key?("title") \
      && (item.key?("date") || item.key?("pubDate")) \
      && item.key?("guid") \
      && item.key?("enclosure") \
      && item["enclosure"].key?("url") \
      && item["enclosure"].key?("type")
  end
  
  # Sometimes there are multiple description tags in an item. NO ONE KNOWS WHY.
  # Sometimes there is no description tag at all.
  # We flatten and join them for use.
  def format_desciption(desc)
    if desc.class == Array
      return desc.flatten.join(" ")
    end
    desc || ''
  end
end

