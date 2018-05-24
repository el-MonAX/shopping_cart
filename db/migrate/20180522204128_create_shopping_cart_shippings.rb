# frozen_string_literal: true

#
class CreateShoppingCartShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_shippings do |t|

      t.timestamps
    end
  end
end
