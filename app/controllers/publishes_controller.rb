class PublishesController < ApplicationController
	def create
		@publish = Publish.new(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@publish.save
		redirect_to("/furnitures/#{params[:furniture_id]}")
	end

	def destroy
		@publish = Publish.find_by(
			user_id: current_user.id,
			furniture_id: params[:furniture_id]
			)
		@publish.destroy
		redirect_to("/furnitures/#{params[:furniture_id]}")
	end

	def show
	end
end
