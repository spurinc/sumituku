Rails.application.routes.draw do
  resources :furnitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'furnitures#index'

  get 'furnitures/search' => "furnitures#search"
end
