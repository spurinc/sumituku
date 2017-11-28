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

end