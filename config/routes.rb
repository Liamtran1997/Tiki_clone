Rails.application.routes.draw do
  resources :line_items
  resources :orders
  resources :carts, only: [:show, :update, :destroy]
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'products#index'
end
