class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed

  scope :visible_to, -> (user) { where(user_id: user.id) }

  def feed
    Feed.find(feed_id)
  end
end
