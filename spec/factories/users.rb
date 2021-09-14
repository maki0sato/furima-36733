FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) } 
    password_confirmation { password }
    last_name             { person.last.kanji }
    first_name            { person.first.kanji }
    reading_last_name     { person.last.katakana }
    reading_first_name    { person.first.katakana }
    birthday              { Faker::Date.backward }
  end
end
