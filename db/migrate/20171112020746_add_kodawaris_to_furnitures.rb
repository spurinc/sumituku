class AddKodawarisToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :kodawari_img, :string
    add_column :furnitures, :kodawari_point, :string
    add_column :furnitures, :kodawari_about, :text
  end
end
