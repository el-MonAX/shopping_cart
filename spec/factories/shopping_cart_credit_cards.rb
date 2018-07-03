FactoryBot.define do
  factory :shopping_cart_credit_card, class: 'ShoppingCart::CreditCard' do
    number '1111222233334444'
    name_on_card 'Jane Doe'
    month_year '11/18'
    cvv '123'
  end
end
