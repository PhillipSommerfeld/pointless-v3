# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Offer.delete_all
User.delete_all

10.times do
  users = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    password: 'test1234'
  )
  users.save
end

# User.all.each do |user|
#   2.times do
#     offers = Offer.create(
#       item_name: Faker::Movie.title,
#       price: rand(5..20),
#       description: Faker::Lorem.paragraph,
#       image_url: "https://lorempixel.com/800/400/sports/#{rand(1..10)}/",
#       quantity: rand(1..5),
#       user_id: user.id
#     )
#     offers.save
#   end
# end
users = User.all

offer = Offer.create(
      item_name: "Pizza Pouch",
      price: 9.5,
      description: "Ever need to carry a slice of pizza, but your hands are already occupied by another slice and a beer? This is the product for you.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://images.firstwefeast.com/complex/image/upload/f_auto,fl_lossy,q_auto,w_1200/bmhtyz69tr7xoqphpyrj.jpg')
offer.photo.attach(io: file, filename: 'pizza_pouch.png', content_type: 'image/png')
offer.save

    offer = Offer.create(
      item_name: "Pizza Scissors + Server",
      price: 50,
      description: "Cut your pizza and serve it in a single swoop!",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://i.imgur.com/KIu1gxK.jpg')
offer.photo.attach(io: file, filename: 'pizza_scissors.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Pet Rock",
      price: 35,
      description: "Don't waste your time caring for pets. The pet rock is the perfect companion for the busy person.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://clickamericana.com/wp-content/uploads/The-history-of-the-Pet-Rock-novelty-toy-gag-gift.jpg')
offer.photo.attach(io: file, filename: 'pet_rock.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Snickles",
      price: 7,
      description: "Two of your favorite foods merged into one!",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://www.simplemost.com/wp-content/uploads/2021/07/Screen-Shot-2021-07-27-at-12.14.19-AM-e1627380939314.png')
offer.photo.attach(io: file, filename: 'snickles.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Glow-in-the-dark Toilet Paper",
      price: 5,
      description: "For the late night sessions.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://smedia2.intoday.in/indiatoday/images/stories/2015November/toilet-paper_112415024309.jpg')
offer.photo.attach(io: file, filename: 'glowing_toilet.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Walk-in Sleeping Bag",
      price: 99.99,
      description: "Why fight to get into a normal sleeping bag when you can walk right in.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://smedia2.intoday.in/indiatoday/images/stories/2015November/sleeping-bag_112415024309.jpg')
offer.photo.attach(io: file, filename: 'sleeping_bag.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Oreo Dipper",
      price: 9.95,
      description: "Keep those fingers nice and clean.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://smedia2.intoday.in/indiatoday/images/stories/2015November/dunk-spoon_112415024309.jpg')
offer.photo.attach(io: file, filename: 'oreo_dunker.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Beard Trimmings Catcher",
      price: 25,
      description: "Shaving your beard doesn't need to be a mess anymore",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://bestlifeonline.com/wp-content/uploads/sites/3/2018/05/beard-catcher.jpg')
offer.photo.attach(io: file, filename: 'beard_bud.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Dog Umbrella",
      price: 45,
      description: "Nobody likes the smell of a wet dog. Keep sparky nice and dry.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://bestlifeonline.com/wp-content/uploads/sites/3/2018/05/dog-umbrella.jpg')
offer.photo.attach(io: file, filename: 'dogbrella.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Big Foot Air Freshener",
      price: 4.95,
      description: "Bring the smell of big foot into your car!",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://cdn.shopify.com/s/files/1/0072/1432/products/accoutrements-archie-mcphee-home-decor-stuff-bigfoot-air-freshener-funny-gag-gifts-17268719124641_720x.jpg')
offer.photo.attach(io: file, filename: 'big_foot.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Coronavirus Stuffed Animal",
      price: 19.19,
      description: "Commemorate the pandemic with this cute lil stuffed virus.",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://cdn.shopify.com/s/files/1/0072/1432/products/giantmicrobes-plush-coronavirus-covid-19-7-plush-funny-gag-gifts-30377308061857_720x.png')
offer.photo.attach(io: file, filename: 'covid.png', content_type: 'image/png')
offer.save

offer = Offer.create(
      item_name: "Tinfoil Cat Hat",
      price: 109.99,
      description: "Friends don't let friends get infected from the 5g waves.. so why would you let your cat? Keep them safe with this tinfoil hat",
      quantity: rand(1..5),
      user_id: users.sample.id
    )
file = URI.open('https://cdn.shopify.com/s/files/1/0072/1432/products/accoutrements-archie-mcphee-impulse-im-funny-stuff-tin-foil-hat-for-cats-funny-gag-gifts-30377777594529_720x.jpg')
offer.photo.attach(io: file, filename: 'snickles.png', content_type: 'image/png')
offer.save
