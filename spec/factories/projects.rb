FactoryBot.define do
  factory :project do
    name { Faker::App.name }
    type { ["Software", "Classic"].sample }
    code { Faker::Alphanumeric.alpha(number: 3).upcase }
  end
end
