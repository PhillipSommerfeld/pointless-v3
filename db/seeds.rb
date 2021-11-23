# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

User.all.each do |user|
  2.times do
    offers = Offer.create(
      item_name: Faker::Movie.title,
      price: rand(5..20),
      description: Faker::Lorem.paragraph,
      image_url: "https://lorempixel.com/800/400/sports/#{rand(1..10)}/",
      quantity: rand(1..5),
      user_id: user.id
    )
    offers.save
  end
end
