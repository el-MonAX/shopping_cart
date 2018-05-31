# frozen_string_literal: true

module ShoppingCart
  # ApplicationRecord
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
