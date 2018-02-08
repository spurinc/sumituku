class RemoveDeliverystatusToFurnitures < ActiveRecord::Migration[5.1]
  def change
    remove_column :furnitures, :Deliverystatus, :integer
  end
end
