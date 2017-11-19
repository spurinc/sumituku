class HomesController < ApplicationController
before_action :sign_in_required, only: [:show,:user]
  def index
  end

  def show
  end

  def user
  	@user = User.find_by(id: params[:id])
  end
end
