class CreateCategories < ActiveRecord::Migration[5.1]
  def change
	create_table :categories do |t|
      t.string :name	# カテゴリの名前
      t.string :image	# イメージ画像
      t.text :summary	# 概要文字列
      t.text :descript_json	# 詳細説明
      t.text :push_json	# カテゴリのおすすめ商品id配列

      t.timestamps
    end
  end
end
