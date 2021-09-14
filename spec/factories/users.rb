FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)} 
    password_confirmation {password}
    last_name             {Faker::Last_name.initials(number: 2)}
    first_name            {Faker::First_name.initials(number: 2)}
    reading_last_name     {Faker::Reading_last_name.initials(number: 2)}
    reading_first_name    {Faker::Reading_first_name.initials(number: 2)}
    date                  {Faker::Date.backward}
  end
end
