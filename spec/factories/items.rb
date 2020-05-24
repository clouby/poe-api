FactoryBot.define do
  factory :item do
    name { Faker::Superhero.name }
    done { false }
    todo_id { nil }
  end
end