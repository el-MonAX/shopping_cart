require 'spec_helper'

module ShoppingCart
  RSpec.describe AddressesController, type: :controller do
    routes { ShoppingCart::Engine.routes }
    let!(:user) { FactoryBot.create(:user) }
    before { sign_in(user) }

    describe 'GET #index' do
      before { get :index }

      it 'return a success response' do
        expect(response.status).to eq(200)
        expect(response).to render_template :index
      end

      it 'assign @addresses' do
        expect(assigns(:addresses)).not_to be_nil
      end
    end

    describe 'PATCH #update' do
      let(:address) { FactoryBot.attributes_for(:shopping_cart_address) }
      let(:addresses_aprams) { { billing: address, shipping: address } }
      before { patch :update, params: { addresses_form: addresses_aprams } }

      it 'assign @addresses' do
        expect(assigns(:addresses)).not_to be_nil
      end

      it 'return a success response' do
        expect(response.status).to eq(200)
      end

      it 'render index' do
        expect(response).to render_template :index
      end
    end
  end
end
