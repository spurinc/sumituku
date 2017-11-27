class Favorite < ApplicationRecord
	validates :user_id,{presence: true}
	validates :furniture_id,{presence: true}
end
