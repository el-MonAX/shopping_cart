# frozen_string_literal: true

FactoryBot.define do
  factory :shopping_cart_coupon, class: 'ShoppingCart::Coupon' do
    code 'TESTCOUPONE'
    discount 7.77
  end
end
