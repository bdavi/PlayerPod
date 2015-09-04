FactoryGirl.define do 
  factory :feed do
    feed_url Faker::Internet.url
  end
end