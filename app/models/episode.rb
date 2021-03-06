class Episode < ActiveRecord::Base
  belongs_to :feed
  has_many :episode_plays

  validates :feed_id, presence: :true

  def display_pub_date
    self.pubDate.strftime("%m/%d/%Y")
  end
end
