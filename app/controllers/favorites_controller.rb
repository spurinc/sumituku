class FavoritesController < ApplicationController

	def create
		@favorite = Favorite.new(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@favorite.save
		redirect_to("/furnitures/#{params[:furniture_id]}")
	end

	def destroy
		@favorite = Favorite.find_by(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@favorite.destroy
		redirect_to("/furnitures/#{params[:furniture_id]}")
	end
end