FactoryGirl.define do 
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }

    trait :with_subscription do
      after(:create) do |user|
        feed = create(:feed)
        create(:subscription, user: user, feed: feed)
      end
    end
  end
end

