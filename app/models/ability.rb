# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user, session = nil)
    user ||= User.new

    if user.admin
      can :manage, :all
    elsif user.id
      can :read, [Author, Book, Category, ShoppingCart::Coupon, ShoppingCart::Delivery]
      can :read, Review
      can :create, Review, user_id: user.id
      can %i[read create update], [ShoppingCart::Order, ShoppingCart::Address, ShoppingCart::CreditCard], user_id: user.id
      can :create, ShoppingCart::OrderItem
      can %i[update destroy], ShoppingCart::OrderItem, id: session[:order_item_ids].to_a
      can :manage, User, id: user.id
    else
      can :read, :all
      can :read, [Author, Book, Category, Review]
      can :create, ShoppingCart::OrderItem
      can %i[update destroy], ShoppingCart::OrderItem, id: session[:order_item_ids].to_a
    end
  end
end
