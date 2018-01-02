class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image
      t.text :summary
      t.text :descript_json

      t.timestamps
    end
  end
end
