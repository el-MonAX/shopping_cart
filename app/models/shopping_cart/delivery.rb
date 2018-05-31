# frozen_string_literal: true

module ShoppingCart
  # Delivery
  class Delivery < ApplicationRecord
    has_many :orders, dependent: :destroy
    validates :name, :time, :price, presence: true

    validates :name, uniqueness: true
    validates :name, length: { maximum: 50 }
    validates :price, numericality: true
  end
end
