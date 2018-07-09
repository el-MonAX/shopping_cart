# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount ShoppingCart::Engine => '/'
  resources :products, only: %i[show index]
  root to: 'products#index'
end
