FactoryBot.define do
  factory :shopping_cart_address, class: 'ShoppingCart::Address' do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    country "MyString"
    zip "12345"
    phone "+15555555555"
    address_type { %w[Billing Shipping].sample }
  end
end
