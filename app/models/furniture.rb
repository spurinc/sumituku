class Furniture < ApplicationRecord
	 mount_uploader :furniture_image, ImageUploader
	 mount_uploader :kodawari_img, ImageUploader
end
