Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  get 'homes/index'
  get 'homes/show'

  resources :furnitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'furnitures#index'

  get 'furnitures/search' => "furnitures#search"
end
