FactoryBot.define do
  factory :project do
    name { Faker::App.name }
    type { "Software" }
    code { "CDE" }
  end
end
