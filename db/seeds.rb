User.delete_all

frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234' )# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
Tipi.delete_all
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tipi.create( title: "Tipi Wan", location: "Blue Lagoon, Iceland", description: "A cozy tipi for one, in the beautiful Blue Lagoon area.", persons: "1", price: "€ 39", image: "Tipiwan.jpg", user: alice )
Tipi.create(title: "Tipi Too", location: "Yellowstone National Park, USA", description: "Located in the spectacular Yellowstone Park, this tipi will make you go back to nature.", persons: "1-2", price: "€ 70", image: "Tipitoo.jpg", user: frank )
Tipi.create( title: "Treepi", location: "The Enchanted Forest, Revelstoke, BA, Canada", description: "The only thing you have to worry about in this tipi are the ticks :)", persons: "4", price: "€ 150", image: "treepi.jpg", user: alice  )
Tipi.create(title: "Tipi Retreat & Sauna", location: "Mljet National Park, Croatia", description: "Glamping in Croatia! You'll have a luxury tipi and your own Sauna. Could it get any better?", persons: "2", price: "€299", image: "retreat.jpg", user: anton )
Tipi.create( title: "Partipi", location: "Portugal", description: "The ideal place to host your wedding or another party. This tipi includes 15 sleeping-tipi's and 2 partipi's.", persons: "30", price: "€ 5000", image: "partipi.jpg", user: frank )
Tipi.create( title: "Honeymoon tipi", location: "Portugal", description: "Ideal to book in combination with our Partipi, this romantic tipi is the best place to wake up after getting married.", persons: "2", price: "€ 400", image: "Honeymoon.png", user: frank)
# Tipi.create(title:, location:, description:, persons:, price:, image:)
# Tipi.create(title:, location:, description:, persons:, price:, image:)
# Tipi.create(title:, location:, description:, persons:, price:, image:)
# Tipi.create(title:, location:, description:, persons:, price:, image:)
