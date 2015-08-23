class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed

  validates :user_id, presence: true
  validates :feed_id, presence: true  

  scope :visible_to, -> (user) { where(user_id: user.id) }
end
