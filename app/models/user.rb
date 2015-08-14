class User < ActiveRecord::Base
  # devise :database_authenticatable, :registerable, :confirmable,
  #        :recoverable, :rememberable, :trackable, :validatable

  devise :database_authenticatable, :registerable, :recoverable, 
         :rememberable, :trackable, :validatable

  has_many :subscriptions
  has_many :feeds, through: :subscriptions
  has_many :episodes, through: :feeds
end
