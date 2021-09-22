FactoryBot.define do
  factory :order_address do
    token                 { 'tok_abcdefghijk00000000000000000' }
    postal_code           { '000-0000' }
    prefecture_id         { Faker::Number.between(from: 2, to: 48) }
    city                  { '渋谷区' }
    house_number          { '宇田川町' }
    building_name         { 'ビル' }
    telephone_number      { '09000000000' }
  end
end
