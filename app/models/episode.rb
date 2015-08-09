class Episode < ActiveRecord::Base
  belongs_to :feed

  def feed
    Feed.find(self.feed_id)
  end

  def display_pub_date
    self.pubDate.strftime("%m/%d/%Y")
  end
end
