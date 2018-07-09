# frozen_string_literal: true

module ShoppingCart
  # Coupon
  class Coupon < ApplicationRecord
    has_many :orders, dependent: :nullify
    before_create :activate

    validates :code, presence: true, uniqueness: true
    validates :discount, presence: true, numericality: true

    def activate
      self.active = true
    end
  end
end
