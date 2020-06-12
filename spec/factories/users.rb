FactoryBot.define do
  factory :user do
    email { "hoge@fuga.com" }
    password = Faker::Internet.password(min_length: 8)
    password {password}
    password_confirmation {password}
  end
end
