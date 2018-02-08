class Furniture < ApplicationRecord
  # carrierwaveを使用
  # 家具のtop画像
	 mount_uploader :furniture_image, ImageUploader

  # 家具のこだわり画像を表示
	 mount_uploader :kodawari_img, ImageUploader

   # 家具に紐付けるuser_idが入力必須
	 validates :user_id,{presence: true}

# 検索
	def self.search(search) #self.でクラスメソッドとしている
      if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
        Furniture.where(['name LIKE ?', "%#{search}%"])
      else
        Furniture.all #全て表示。
      end
    end 
end
