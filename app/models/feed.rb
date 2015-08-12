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
      feed_hash = Hash.from_xml(feed_xml) #Will error if not valid XML
      channel_data = feed_hash["rss"]["channel"]

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
        channel_data["item"].each do |item|
          unless existing_episode_guids.include? item["guid"]
            self.episodes.create(
                title: item["title"] || "",
                link: item["link"] || "",
                description: format_desciption(item["description"]) || "",
                pubDate: item["pubDate"] || Datetime.now,
                duration: item["link"] || "",
                audio_url: item["enclosure"]["url"] || "",
                audio_type: item["enclosure"]["type"] || "",
                guid: item["guid"])
          end
        end
      end
      return true
    rescue
      return false
    end
  end

private

  def ensure_url_contains_a_podcast_feed
    begin
      # Get and hash the feed info
      # feed_xml = HTMLEntities.new.decode(get_content_from_url) #Will error if invalid URL or network problems
      feed_xml = get_content_from_url
      feed_hash = Hash.from_xml(feed_xml) #Will error if not valid XML
      return feed_hash_is_well_formed(feed_hash)
    rescue
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
      return feed_hash["rss"]["channel"].has_key?("title") \
          && feed_hash["rss"]["channel"].has_key?("description") \
          && feed_hash["rss"]["channel"].has_key?("item") 
    rescue Exception => e
      false
    end
  end
  
  # Sometimes there are two description tags in an item. NO ONE KNOW WHY.
  # We flatten and join them for use.
  def format_desciption(desc)
    if desc.class == Array
      return desc.flatten.join(" ")
    end
    desc
  end
end

