# frozen_string_literal: true

require 'spec_helper'

module ShoppingCart
  RSpec.describe Address, type: :model do
    include_examples 'address_validations'

    describe 'scopes' do
      before(:all) { FactoryBot.create_list(:shopping_cart_address, 20) }

      describe 'billing' do
        subject { ShoppingCart::Address.billing }

        it 'contain only one type of addresses' do
          expect(subject.map(&:address_type).uniq.size).to eq 1
        end

        it 'only shipping' do
          expect(subject.sample.address_type).to eq 'Billing'
        end
      end

      describe 'shipping' do
        subject { ShoppingCart::Address.shipping }

        it 'contain only one type of addresses' do
          expect(subject.map(&:address_type).uniq.size).to eq 1
        end

        it 'only shipping' do
          expect(subject.sample.address_type).to eq 'Shipping'
        end
      end
    end
  end
end
