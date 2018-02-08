class CreatePurchaseds < ActiveRecord::Migration[5.1]
  def change
    create_table :purchaseds do |t|
      t.integer :user_id
      t.integer :furniture_id
      t.integer :purchased_status

      t.timestamps
    end
  end
end
