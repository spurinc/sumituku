class HomesController < ApplicationController
before_action :sign_in_required, only: [:show,:user]
  # ユーザー周りのコントローラー
  def index
  end

  def show
  end

  # ユーザー情報
  def user
    @user = User.find_by(id: params[:id])
  end

  def myproduct
    @user = current_user
    @furnitures = Furniture.where(user_id: @user.id)
  end

  def favorites
    @user = current_user
    @favorites = Favorite.where(user_id: @user.id)
  end

  def carts
    @user = current_user
    @publishes = Publish.where(user_id: @user.id)
    @total_price = 0
  end

  def pay

    #カートの金額を
    user = current_user
    total_price = 0
    publishes = Publish.where(user_id: user.id)
    publishes.each do |publish|
      furniture = Furniture.find_by(id: publish.furniture_id)
      total_price += furniture.price
      furniture.Deliverystatus = 'purchased'
      publish.destroy
    end
    Payjp.api_key = 'sk_test_680f07880976f1207457ef20'
    binding.pry
    charge = Payjp::Charge.create(
      :amount => total_price,
      :card => params['payjp-token'],
      :currency => 'jpy',
    )
  end

end

