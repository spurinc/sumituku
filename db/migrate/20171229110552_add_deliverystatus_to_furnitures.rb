class AddDeliverystatusToFurnitures < ActiveRecord::Migration[5.1]
  def change
    add_column :furnitures, :Deliverystatus, :integer
  end
end
