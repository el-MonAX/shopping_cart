FactoryBot.define do
  factory :shopping_cart_order_item, class: 'ShoppingCart::OrderItem' do
    transient do
      product
    end
    quantity 1
  end
end
