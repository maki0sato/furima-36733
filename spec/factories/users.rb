FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) } 
    password_confirmation { password }
    last_name             { person.last.kanji }
    first_name            { person.first.kanji }
    reading_last_name     { person.first.katakana }
    reading_first_name    { person.first.katakana }
    date                  {Faker::Date.backward}
  end
end
