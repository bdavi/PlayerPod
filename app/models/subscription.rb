class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed

  def feed
    Feed.find(feed_id)
  end
end
