FactoryBot.define do
    factory :poetry do
        title { Faker::Science.scientist }
        author { Faker::Artist.name }
        body_markdown { "#{title} is nice" }
    end
end