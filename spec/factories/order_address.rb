FactoryBot.define do
  factory :order_address do
    transient do
      person { Gimei.name }
    end
    token                 { "tok_abcdefghijk00000000000000000" }
    postal_code           { Faker::Postcode.to_s.insert(3, "-")}
    prefecture_id         { Faker::Number.between(from: 2, to: 48) }
    city                  { address.city.kanji }
    house_number          { address.town.kanji }
    building_name         { address.town.kanji }
    telephone_number      { "09000000000" }
  end
end
