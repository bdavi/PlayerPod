class Feed < ActiveRecord::Base
  has_many :subscriptions
end
