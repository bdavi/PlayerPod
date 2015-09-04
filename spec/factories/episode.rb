FactoryGirl.define do 
  factory :episode do 
    title { Faker::Lorem.sentence }
    link { Faker::Internet.url }
    description { Faker::Lorem.paragraph }
    pubDate { Faker::Time.backward(rand(30)) }
    duration Random.rand(60)
    audio_url { Faker::Internet.url }
    guid "Unique identifier #{Random.rand(5000)}"
    audio_type "audio/mpeg"

    trait :with_feed do
      after(:build) do |episode|
          feed = create(:feed)
          episode.feed = feed
      end
    end
  end
end