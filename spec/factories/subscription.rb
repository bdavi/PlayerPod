FactoryGirl.define do 
  factory :subscription do
    trait :with_feed do
      after(:build) do |subscription| 
        feed = create(:feed)
        subscription.feed = feed
      end
    end

    trait :with_user do
      after(:build) do |subscription|
        user = create(:user)
        subscription.user = user
      end
    end

    trait :with_feed_and_user do
      after(:build) do |subscription|
        user = create(:user)
        feed = create(:feed)
        subscription.feed = feed
        subscription.user = user
      end
    end
  end
end