class HomesController < ApplicationController
before_action :sign_in_required, only: [:show,:user]
  # ユーザー周りのコントローラー
  def index
  end

  def show
    @purchaseds = Purchased.where(creator: current_user.id).where(purchased_status: 'undelivered')    
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
    # binding.pry
    user = current_user
    total_price = 0
    publishes = Publish.where(user_id: user.id)
    publishes.each do |publish|
      furniture = Furniture.find_by(id: publish.furniture_id)
      total_price += furniture.price
      publish.destroy
      @purchaseds = Purchased.new(
        user_id: user.id,
        furniture_id: furniture.id,
        purchased_status: 0,
        creator: furniture.user_id
        )
      @purchaseds.save
    end
    Payjp.api_key = 'sk_test_680f07880976f1207457ef20'
    total_price
    charge = Payjp::Charge.create(
      :amount => total_price,
      :card => params['payjp-token'],
      :currency => 'jpy',
    )
      redirect_to(homes_thanks_path)
  end

  def payed
    #カートの金額を
    user = current_user
    total_price = 0
    publishes = Publish.where(user_id: user.id)
    publishes.each do |publish|
      furniture = Furniture.find_by(id: publish.furniture_id)
      total_price += furniture.price
      publish.destroy
      @purchaseds = Purchased.new(
        user_id: user.id,
        furniture_id: furniture.id,
        purchased_status: 0,
        creator: furniture.user_id
        )
      @purchaseds.save
    end
      redirect_to(homes_purchasedsbuy_path)
  end

  def thanks
  end

  def purchasedsbuy
    @user = current_user
    @purchaseds = Purchased.where(user_id: @user.id).order(created_at: :desc)
  end

  def purchasedscreator
    @purchaseds = Purchased.where(creator: current_user.id).order(created_at: :desc)
  end
end

