Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :line_items
  get "/categories/:category_id/products" , to: "categories#product_from_category", :as => "products_by_category"

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :categories

  resources :products do
    collection do
      match 'search' => 'products#search', via: [:get, :post], as: :search
    end
    resources :comments do
      member do
        put 'like', to: "comments#like"
        put 'unlike', to: "comments#unlike"
      end
    end
    member do
      put 'like', to: "products#like"
      put 'unlike', to: "products#unlike"
    end
  end

  post "checkout/create", to: "checkout#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'products#index'
end
