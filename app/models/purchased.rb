class Purchased < ApplicationRecord
	enum purchased_status: {
		undelivered: 0,
		shipped: 1
	}
	validates :user_id,{presence: true}
	validates :furniture_id,{presence: true}
	validates :purchased_status,{presence: true}

end
