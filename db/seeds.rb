# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
Poster.destroy_all
User.destroy_all

user_1 = User.create(email:"marcelo@live.com", password:"123456" ,first_name:"Marcelo" , last_name:"Amaral" )
user_2 = User.create(email:"justin@live.com", password:"123456" ,first_name:"Justin" , last_name:"Bieber" )
user_3 = User.create(email:"lewis@live.com", password:"123456" ,first_name:"Lewis" , last_name:"Hamilton" )


poster_1 = Poster.new(id:1, band_name: "NSYNC", description: "NSYNC Official Poster Book", price_per_day:10, height:40, width:20, user:user_1)
file = URI.open("https://i.etsystatic.com/28911785/r/il/e39bb9/5176179851/il_fullxfull.5176179851_97uw.jpg")
poster_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_1.save

poster_2 = Poster.new(id:2, band_name: "SPICE GIRLS", description: "SPICE GIRLS Official Poster Book", price_per_day:10, height:40, width:20, user:user_2)
file = URI.open("https://www.magazinecollectors.co.uk/images/spicegirlspostere.jpg")
poster_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_2.save

poster_3 = Poster.new(id:3, band_name: "JONAS BROTHERS", description: "JONAS BROTHERS Official Poster Book", price_per_day:10, height:40, width:20, user:user_3)
file = URI.open("https://www.panicposters.com/cdn/shop/products/pp054-jonas.jpg?v=1681399222")
poster_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_3.save

poster_4 = Poster.new(id:4, band_name: "BACKSTREET BOYS", description: "BACKSTREET BOYS Official Poster Book", price_per_day:15, height:60, width:30, user:user_1)
file = URI.open("https://i.ebayimg.com/images/g/AD8AAOSwnBdgR9Wo/s-l1600.jpg")
poster_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_4.save

poster_5 = Poster.new(id:5, band_name: "BTS", description: "BTS Official Poster Book", price_per_day:15, height:60, width:30, user:user_2)
file = URI.open("https://rukminim1.flixcart.com/image/850/1000/xif0q/poster/m/t/7/medium-bts-poster-bts-boys-group-poster-350gsm-bts01-p-original-imagmvjvkpgxjgcu.jpeg?q=90")
poster_5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_5.save

poster_6 = Poster.new(id:6, band_name: "HANNAH MONTANA", description: "HANNAH MONTANA Official Poster Book", price_per_day:15, height:60, width:30, user:user_3)
file = URI.open("https://i.ebayimg.com/images/g/d2wAAOSwGF1gvy~3/s-l1600.jpg")
poster_6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_6.save

poster_7 = Poster.new(id:7, band_name: "ABBA", description: "ABBA Official Poster Book", price_per_day:20, height:90, width:45, user:user_1)
file = URI.open("https://m.media-amazon.com/images/I/61249NGGWQL._AC_UF1000,1000_QL80_.jpg")
poster_7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_7.save

poster_8 = Poster.new(id:8, band_name: "ONE DIRECTION", description: "ONE DIRECTION Official Poster Book", price_per_day:20, height:90, width:45, user:user_2)
file = URI.open("https://m.media-amazon.com/images/I/81MlUSvIevL._AC_UF894,1000_QL80_.jpg")
poster_8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_8.save

poster_9 = Poster.new(id:9, band_name: "THE BEATLES", description: "THE BEATLES Official Poster Book", price_per_day:20, height:90, width:45, user:user_3)
file = URI.open("https://i.ebayimg.com/images/g/GH0AAOSw1~tef1hN/s-l1200.jpg")
poster_9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poster_9.save


Booking.destroy_all
users = User. all
posters = Poster.all

booking_1 = Booking.create(
  checkin_on: Date.today + 1, checkout_on: Date.today + 3, user: users.sample, poster: posters.sample, status: "Confirmed"
)

booking_2 = Booking.create(
  checkin_on: Date.today + 2, checkout_on: Date.today + 4, user: users.sample, poster: posters.sample, status: "Confirmed"
)

booking_ = Booking.create(
  checkin_on: Date.today + 1, checkout_on: Date.today + 3, user: users.sample, poster: posters.sample, status: "Confirmed"
)
