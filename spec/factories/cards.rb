FactoryBot.define do
  factory :card do
    title { Faker::Lorem.sentence(word_count: 5) }
    description { Faker::Lorem.paragraph }
  end
end
