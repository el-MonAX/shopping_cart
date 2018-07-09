# frozen_string_literal: true

require 'spec_helper'

module ShoppingCart
  RSpec.describe Order, type: :model do
    it { expect(subject).to belong_to :user }
    it { expect(subject).to belong_to :delivery }
    it { expect(subject).to belong_to :credit_card }
    it { expect(subject).to belong_to :coupon }
    it { expect(subject).to have_many :order_items }
    it { expect(subject).to have_many :addresses }
    it { expect(subject).to have_one :billing }
    it { expect(subject).to have_one :shipping }
  end
end
