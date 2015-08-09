require 'uri'

class Feed < ActiveRecord::Base
  URL_REGEX = /\A#{URI::regexp}\Z/

  attr_accessor :xml, :xml_hash

  @xml= ""
  @xml_hash = {}

  has_many :subscriptions
  has_many :episodes
  validates_format_of :feed_url, with: URL_REGEX

  def update_from_server
    get_feed_xml
    store_channel_info
    remove_missing_episodes
    create_new_episodes
    self.save
  end

  def get_feed_xml
    @xml = Net::HTTP.get(URI.parse(feed_url))
    @xml_hash = Hash.from_xml(@xml)
  end

  def store_channel_info
    channel_data = @xml_hash["rss"]["channel"]
    self.title = channel_data["title"]
    self.description = channel_data["description"]
  end

  def remove_missing_episodes
    # Determine what episodes are in the feed we downloaded
    episode_guids_to_keep = []
    @xml_hash["rss"]["channel"]["item"].each do |item|
      episode_guids_to_keep << item["guid"]
    end

    # Remove local/old episodes if they are no longer in the feed
    self.episodes.each do |episode|
      episode.destroy unless episode_guids_to_keep.include? episode.guid
    end
  end

  def create_new_episodes
    # Determine what episodes we already have
    currently_saved_episode_guids = []
    self.episodes.each do |episode|
      currently_saved_episode_guids << episode.guid
    end

    # Create missing episodes
    @xml_hash["rss"]["channel"]["item"].each do |item|
      if not currently_saved_episode_guids.include? item["guid"]
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

private
end
