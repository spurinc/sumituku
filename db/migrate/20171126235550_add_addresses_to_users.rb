class AddAddressesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :postnum, :string
    add_column :users, :pref, :string
    add_column :users, :city, :string
    add_column :users, :addr, :string
  end
end
