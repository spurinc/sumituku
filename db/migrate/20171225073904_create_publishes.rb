class CreatePublishes < ActiveRecord::Migration[5.1]
  def change
    create_table :publishes do |t|
      t.integer :user_id
      t.integer :furniture_id

      t.timestamps
    end
  end
end
