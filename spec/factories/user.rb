# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: 'User' do
    sequence(:email) { |i| "user#{i}@email.com" }
    password 'test123456A'
    after(:build) { |user| user.class.skip_callback(:save, :before) }
  end
end
