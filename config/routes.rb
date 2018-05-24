ShoppingCart::Engine.routes.draw do
resource  :cart, only: %i[show update]
resources :checkout
resources :credit_card
resources :orders, only: %i[index show]
resources :order_items, only: %i[create update destroy]

get  'settings/addresses', to: 'addresses#index'
post 'settings/addresses', to: 'addresses#create'
put  'settings/addresses', to: 'addresses#update'
end
