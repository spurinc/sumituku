Rails.application.routes.draw do
  # devise_for :users
  # devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  devise_for :users, :controllers => {
  :omniauth_callbacks => "omniauth_callbacks",
  :sessions      => "users/sessions",
  :registrations => "users/registrations",
  :passwords     => "users/passwords"
}
  get 'homes/index'
  get 'homes/show'

  resources :furnitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'furnitures#index'
  root 'products#index'
  get 'products' => 'products#index'
  post 'products/pay' => 'products#pay'

  get 'furnitures/search' => "furnitures#search"
end
