module ShoppingCart
  #
  module ApplicationHelper
    def cart_items_count
      return OrderItem.where(id: session[:order_item_ids]).sum(:quantity) if session[:order_item_ids]
      current_order.order_items.sum(:quantity)
    end
  end
end
