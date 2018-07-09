# frozen_string_literal: true

FactoryBot.define do
  factory :shopping_cart_address, class: 'ShoppingCart::Address' do
    first_name 'MyName'
    last_name 'MyName'
    address 'MyAddress'
    city 'MyCity'
    country 'MyCountry'
    zip '12345'
    phone '+15555555555'
    address_type { %w[Billing Shipping].sample }
  end
end
