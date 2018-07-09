# frozen_string_literal: true

FactoryBot.define do
  factory :shopping_cart_delivery, class: 'ShoppingCart::Delivery' do
    sequence(:name) { |i| "Delivery#{i}" }
    time '1 to 2 days'
    price 7.77
  end
end
