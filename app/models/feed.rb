require 'uri'

class Feed < ActiveRecord::Base
  has_many :subscriptions, dependent: :destroy
  has_many :episodes, dependent: :destroy
  before_validation :ensure_url_contains_a_podcast_feed, before: :create
  after_create :update_from_server

  def ensure_url_contains_a_podcast_feed
    begin
      feed_xml = get_content_from_url #Will error if invalid URL or network problems
      feed_hash = Hash.from_xml(feed_xml) #Will error if not valid XML
      return feed_hash_is_well_formed(feed_hash)
    rescue
      errors.add :feed_url, "This URL doesn't contain a valid podcast feed."
      return false 
    end
  end

  def get_content_from_url
    Net::HTTP.get(URI.parse(feed_url))
  end

  # Checks hash to ensure it has all the elements we will need to parse this as a podcast feed.
  def feed_hash_is_well_formed(feed_hash)
    begin
      return feed_hash["rss"]["channel"].has_key?("title") \
          && feed_hash["rss"]["channel"].has_key?("description") \
          && feed_hash["rss"]["channel"].has_key?("item") 
    rescue 
      false
    end
  end

  def update_from_server
    begin
      feed_xml = get_content_from_url
      feed_hash = Hash.from_xml(feed_xml)

      ActiveRecord::Base.transaction do
        channel_data = feed_hash["rss"]["channel"]
    
        # Update feed
        self.title = channel_data["title"]
        self.description = channel_data["description"]
        self.save

        # Clear old episodes
        episode_guids_to_keep = channel_data["item"].map {|item| item["guid"]}
        self.episodes.where.not(guid: episode_guids_to_keep).destroy_all

        # Create new episodes
        existing_episode_guids = self.episodes.map {|e| e.guid}
        channel_data["item"].each do |item|
          unless existing_episode_guids.include? item["guid"]
            self.episodes.create(
                title: item["title"],
                link: item["link"],
                description: item["description"],
                pubDate: item["pubDate"],
                duration: item["link"],
                audio_url: item["content"]["url"],
                guid: item["guid"])
          end
        end
      end
      return true
    rescue
      return false
    end
  end
end

