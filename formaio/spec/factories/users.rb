FactoryBot.define do
  factory :user do
    username { SecureRandom.hex(3) }
    email { "#{SecureRandom.hex(4)}@example.org" }
    password {SecureRandom.hex(8)}
  end
end