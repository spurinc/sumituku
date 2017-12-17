class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :prof_img, :string
    add_column :users, :creator_buyer, :string
  end
end
