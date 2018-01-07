class AddCreatorToPurchased < ActiveRecord::Migration[5.1]
  def change
    add_column :purchaseds, :creator, :integer
  end
end
