class Product < ApplicationRecord
  has_many :order_items, class_name: 'ShoppingCart::OrderItem', dependent: :destroy
  has_many :orders, class_name: 'ShoppingCart::Order', through: :order_items, dependent: :destroy
end
