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

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://c.files.bbci.co.uk/12A9B/production/_111434467_gettyimages-1143489763.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'data:image/jpeg;base64,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')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://images.theconversation.com/files/350865/original/file-20200803-24-50u91u.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=675.0&fit=crop')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.ytimg.com/vi/317jz-PU7Mg/maxresdefault.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.ytimg.com/vi/G-uztKmgwoM/maxresdefault.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://c.ndtvimg.com/2019-08/572rgsf_cat-receives-shock-funny-cat-pics_625x300_09_August_19.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.ytimg.com/vi/cXpkLwrx1Jo/maxresdefault.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.ytimg.com/vi/ZS8QwqD2bco/maxresdefault.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://www.top13.net/wp-content/uploads/2015/10/perfectly-timed-cat-photos-funny-cover.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'http://static.demilked.com/wp-content/uploads/2019/11/5dde3b187defc-funny-spiderman-and-cats-adventures-thai-neung-fb4-png__700.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://static.boredpanda.com/blog/wp-content/uploads/2019/04/funny-dancing-cats-fb3.png')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://api.time.com/wp-content/uploads/2020/02/Catittude_Power_Ranking_Cattiest_Cats.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://filmdaily.co/wp-content/uploads/2020/07/if-it-fits-lede-1300x1123.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.ytimg.com/vi/kfToB7rmG5k/maxresdefault.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://wallpaperaccess.com/full/804014.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://thumbs.dreamstime.com/b/cute-funny-cat-medical-mask-lop-eared-176700030.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://ngolongtech.b-cdn.net/wp-content/uploads/2016/05/ngolongtech_Top-funny-cats-picture-1.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://cdn.slidesharecdn.com/ss_thumbnails/downloadfunnycatvideos-150906143836-lva1-app6891-thumbnail-4.jpg?cb=1441550352')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://ca-times.brightspotcdn.com/dims4/default/916e87e/2147483647/strip/true/crop/3840x2160+0+0/resize/840x473!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fcc%2F98%2Fba1a3544411bb9499edba0ac9656%2Fcat-nation-2-credit-tim-delmastro.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://thepetconcierge.com/wp-content/uploads/2015/09/cat-866537.jpg')

Product.create(title: Faker::Creature::Cat.breed,
description: Faker::Lorem.sentence(word_count: 10), 
price: Faker::Number.decimal(l_digits: 2), 
format: 'jpg', 
image_url: 'https://i.imgflip.com/4kroiq.jpg')









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
