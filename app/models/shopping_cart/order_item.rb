# frozen_string_literal: true

module ShoppingCart
  # OrderItem
  class OrderItem < ApplicationRecord
    belongs_to :product, class_name: ShoppingCart.product_class.to_s
    belongs_to :order, optional: true, class_name: 'ShoppingCart::Order'

    validates :quantity, presence: true, numericality: { only_integer: true,
                                                         greater_than: 0 }

    before_validation :set_product

    def total
      product.price * quantity
    end

    private

    def set_product
      self.product = ShoppingCart.product_class.find_or_create_by(id: product_id)
    end
  end
end
