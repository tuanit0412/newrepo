Rails.application.routes.draw do
  get "admin" => "admin#index"
  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index", as: "home_index"
  resources :store
  resources :home
  resources :orders
  resources :line_items
  resources :carts
  resources :types
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    get :who_bought, on: :member
  end
end
