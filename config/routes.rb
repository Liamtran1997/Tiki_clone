Rails.application.routes.draw do
  # resources :line_items
  resources :orders
  resources :carts
  resources :line_items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :products

  resources :categories
  post "checkout/create", to: "checkout#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'products#index'
end
