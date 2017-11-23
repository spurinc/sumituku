class HomesController < ApplicationController
before_action :sign_in_required, only: [:show,:user]
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
end
