# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Funniture.create(id: "1",name: "テストイス",category: "chair",furniture_image: "aeronchair1.jpg",price: 7980,furniture_about: "")


10.times do |i|
  Furniture.create!(
    name: "#{i+1}個目のtest",
    category: 2,
    furniture_image: open("app/assets/images/creator.jpg"),
    price: 1000,
    furniture_about: "this form was made as the test",
    kodawari_img: nil,
    kodawari_point: nil,
    kodawari_about: nil,
    size: nil,
    delivery: nil,
    user_id: 1
  )
end
