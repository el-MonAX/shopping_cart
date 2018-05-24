# frozen_string_literal: true

#
class CreateShoppingCartBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_billings do |t|

      t.timestamps
    end
  end
end
