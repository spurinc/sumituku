# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Funniture.create(id: "1",name: "テストイス",category: "chair",furniture_image: "aeronchair1.jpg",price: 7980,furniture_about: "")


# カテゴリーの一覧と、カテゴリーから製品一覧を表示する時のデータ
Category.create(id:'1', name:'Chair'
	, image:'furniture/furniture_image/1/aeronchair1.jpg'
	, summary:'Chair_summary'
	, descript_json:'["Chair_descript_json","descript_json"]'
	, push_json: '[-1,-1]')

Category.create(id:'2', name:'Table'
	, image:'furniture/furniture_image/2/testtable.jpg'
	, summary:'Table_summary'
	, descript_json:'["Table_descript_json","descript_json"]'
	, push_json: '[-1,-1]')