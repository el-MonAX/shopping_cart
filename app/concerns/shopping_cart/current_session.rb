# frozen_string_literal: true

# CurrentSession
module ShoppingCart::CurrentSession
  extend ActiveSupport::Concern

  included do
    helper_method :current_order,
                  :shopping_cart_current_user,
                  :signed_in?

    def after_sign_in_path_for(resource)
      if cookies[:from_checkout]
        cookies.delete :from_checkout
        shopping_cart.checkout_path(:addresses)
      else
        super
      end
    end
  end

  def signed_in?
    return unless respond_to?("#{ShoppingCart.user_class}SignedIn?".underscore)
    public_send "#{ShoppingCart.user_class}SignedIn?".underscore
  end

  def current_order
    return ShoppingCart::Order.new unless session[:order_id]
    ShoppingCart::Order.find(session[:order_id])
  end

  def shopping_cart_current_user
    return unless respond_to?(devise_current_user_method)
    @shopping_cart_current_user ||= public_send(devise_current_user_method)
  end

  private

  def devise_current_user_method
    "Current#{ShoppingCart.user_class}".underscore
  end
end
