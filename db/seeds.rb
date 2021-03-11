# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Order.destroy_all
User.destroy_all
LineItem.destroy_all
Product.destroy_all
Cart.destroy_all
LineOrder.destroy_all

10.times do |id|
  product = Product.create(title: Faker::Superhero.name, description: Faker::Lorem.sentence(word_count: 10), price: Faker::Number.decimal(l_digits: 2), format: 'jpg', image_url: "chaton_#{id}.jpg")
end

admin = User.create(email: 'admin@yopmail.com', username: 'admin', password: '123456', admin: true)

10.times do |id|
  user = User.create(email: "bob_#{id}@yopmail.com", username: "bobo_#{id}", password: '123456', admin: 'false')
end

10.times do |id|
  cart = Cart.create(user_id: User.all.sample.id)
end

10.times do |id|
  line_item = LineItem.create(product_id: Product.all.sample.id, cart_id: Cart.all.sample.id, quantity: 1)
end  

10.times do |id|
  order = Order.create(user_id: User.all.sample.id)
end

10.times do |id|
  line_order = LineOrder.create(order_id: Order.all.sample.id, product_id: Product.all.sample.id, quantity: 1)
end
