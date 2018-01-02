class Category < ApplicationRecord
	def descriptions
		desc = JSON.parse(descript_json)
		arr = []
		desc.each do |str|
			arr.push str
		return arr
	end

	def push_list
		desc = JSON.parse(push_json)
		arr = []
		push_json.each do |id|
			arr.push id
		return arr
	end

end
