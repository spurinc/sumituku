class AddDeliverysizeToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :size, :text
    add_column :furnitures, :delivery, :text
  end
end
