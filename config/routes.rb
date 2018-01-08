Rails.application.routes.draw do


  # devise gemを利用
  devise_for :users, :controllers => {
    :omniauth_callbacks => "omniauth_callbacks",
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords"
  }

  # ユーザーのマイページ
  get 'homes/index'
  get 'homes/show'
  get 'homes/myproduct'
  get 'homes/favorites' => 'homes#favorites'

  # 家具のパスを設定
  resources :furnitures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # topページを設定
  root 'products#index'
  # root to: 'furnitures#index'
  # さえきけしました

  # payjpの使用
  get 'products' => 'products#index'
  post 'products/pay' => 'products#pay'

  # 家具の検索を追加
  get 'furnitures/search' => "furnitures#search"

  # お気に入り
  post "/favorites/:furniture_id/create" => "favorites#create"
  post "/favorites/:furniture_id/destroy" => "favorites#destroy"

  # サービスアバウト
  get 'service_about' => 'service_about#main'
  get 'service_about/main'

  # カテゴリー
  get 'category' => 'category#list'
  get 'category/list'
  get 'category/subject'

end
