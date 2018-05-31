# frozen_string_literal: true

module ShoppingCart
  # ApplicationController
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
  end
end
