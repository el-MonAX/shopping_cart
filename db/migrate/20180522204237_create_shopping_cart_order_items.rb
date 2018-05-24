# frozen_string_literal: true

#
class CreateShoppingCartOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_order_items do |t|
      t.integer :quantity

      t.integer :product_id, foreign_key: true
      t.references :order, foreign_key: { to_table: :shopping_cart_orders }

      t.timestamps
    end
  end
end
