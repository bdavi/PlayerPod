FactoryGirl.define do 
  factory :user do
    email "test@test.com"
    password "passwordhere!!"

    factory :user_with_subscription do |user|
      after(:create) do 
        feed = FactoryGirl.create(:feed)
        FactoryGirl.create(:subscription, user: user, feed: feed)
      end
    end
  end
end