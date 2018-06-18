Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :types
  resources :users
  get "store/index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index", as: "home_index"
  resources :products do
    get :who_bought, on: :member
  end
  resources :stores do
    collection { post :search, to: "store#index" }
  end
  resources :home do
    collection { post :search, to: "store#index" }
  end
  resources :products do
    collection { post :search, to: "store#index" }
  end
end
