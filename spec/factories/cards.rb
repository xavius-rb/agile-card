FactoryBot.define do
  factory :card do
    title { Faker::Lorem.sentence(word_count: 4) }
    description { Faker::Lorem.paragraph }
  end
end
