class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders, class_name: 'ShoppingCart::Order', foreign_key: :user_id, dependent: :destroy
  has_many :addresses, class_name: 'ShoppingCart::Address', foreign_key: :user_id, dependent: :destroy
  has_one :billing, class_name: 'ShoppingCart::Billing', foreign_key: :user_id, dependent: :destroy
  has_one :shipping, class_name: 'ShoppingCart::Shipping', foreign_key: :user_id, dependent: :destroy

  private

  def name_from_address
    "#{billing.first_name} #{billing.last_name}"
  end
end
