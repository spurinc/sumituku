class PurchasedsController < ApplicationController
	def create
		@purchaseds = Purchased.new(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@purchaseds.save
		redirect_to(homes_carts_path)
	end

	def update
		@purchased = Purchased.find_by(id: params[:id])
		binding.pry
		@purchased.purchased_status = params[:purchased][:purchased_status]
		@purchased.save
		redirect_to(homes_purchasedscreator_path)
	end

	def destroy
		@purchaseds = Purchaseds.find_by(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@purchaseds.destroy
		redirect_to(homes_carts_path)
	end
end
