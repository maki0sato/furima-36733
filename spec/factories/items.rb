FactoryBot.define do
  factory :item do
    item                  { Faker::Name.name }
    text                  { Faker::Lorem.sentence }
    category_id           { Faker::Number.between(from: 2, to: 11) }
    quality_id            { Faker::Number.between(from: 2, to: 7) }
    delivery_free_id      { Faker::Number.between(from: 2, to: 3) }
    prefecture_id         { Faker::Number.between(from: 2, to: 48) }
    days_to_id            { Faker::Number.between(from: 2, to: 4) }
    price                 { Faker::Number.between(from: 300, to: 9_999_999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    association :user
  end
end
