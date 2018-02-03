class CartController < ApplicationController
	def create
		@cart = Cart.new(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@cart.save
		redirect_to(homes_carts_path)
	end

	def destroy
		@cart = Cart.find_by(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@cart.destroy
		redirect_to(homes_carts_path)
	end
end
