class AddDetailsToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :price, :integer
    add_column :furnitures, :furniture_about, :text
  end
end
