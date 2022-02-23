# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning db..."
# if Rails.env.development?
#   User.destroy_all
#   Grandmaster.destroy_all
#   Booking.destroy_all
# end

user1 = User.create!(email: "bob@chess.com", name: "Bob Chess", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "lali@chess.com", name: "Lali Kickass", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "mat@chess.com", name: "Mathias Grand", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "miq@chess.com", name: "Miquel Sogood", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "chris@chess.com", name: "Chris Notbad", password: "123456", password_confirmation: "123456")

gm1 = Grandmaster.new(fide_id: 12345, elo_rating: 2521, country: 'Malta', bio: 'I like cats and chess.', language: 'french', user: user1)
gm1.save!
gm2 = Grandmaster.new(fide_id: 1111, elo_rating: 9000, country: 'Georgia', bio: "I'm simply the best.", language: 'english', user: user2)
gm2.save!
gm3 = Grandmaster.new(fide_id: 2222, elo_rating: 2700, country: 'Denmark', bio: "I'm the best after Lali.", language: 'english', user: user3)
gm3.save!
puts 'Finished!'

booking1 = Booking.create!(status: "accepted", message: "Hey! I want to learn from you :)", user: user4, grandmaster: gm2)
booking2 = Booking.create!(status: "rejected", message: "Hey! I want to learn from you :)", user: user4, grandmaster: gm3)
booking3 = Booking.create!(message: "Hey! I want to learn from you :)", user: user5, grandmaster: gm1)
