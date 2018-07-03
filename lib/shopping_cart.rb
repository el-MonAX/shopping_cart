# frozen_string_literal: true

require 'shopping_cart/engine'
# ShoppingCart
module ShoppingCart
  mattr_accessor :user_class
  mattr_accessor :product_class

  def self.user_class
    @@user_class
  end

  def self.product_class
    @@product_class
  end
end
