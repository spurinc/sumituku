class AddUserIdToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :user_id, :integer
  end
end
