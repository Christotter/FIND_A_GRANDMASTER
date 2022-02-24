# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Cleaning db..."
Booking.destroy_all
Grandmaster.destroy_all
User.destroy_all

user1 = User.create!(email: "bob@chess.com", name: "Fabiano Caruana", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "lali@chess.com", name: "Hou Yifan", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "mat@chess.com", name: "Hikaru Nakamura", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "miq@chess.com", name: "Alireza Firouzja", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "chris@chess.com", name: "Vishy Anand", password: "123456", password_confirmation: "123456")
user6 = User.create!(email: "zorg@chess.com", name: "Elizabeth Harmon", password: "123456", password_confirmation: "123456")
user7 = User.create!(email: "adam@chess.com", name: "Magnus Carslen", password: "123456", password_confirmation: "123456")
user8 = User.create!(email: "giri@chess.com", name: "Anish Giri", password: "123456", password_confirmation: "123456")
user9 = User.create!(email: "polgar@chess.com", name: "Susan Polgar", password: "123456", password_confirmation: "123456")

file1 = URI.open('https://es.chessbase.com/Portals/all/thumbs/069/69539.jpeg')
file2 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Hou_Yifan_%2829762728494%29_%28cropped%29.jpg/1920px-Hou_Yifan_%2829762728494%29_%28cropped%29.jpg')
file3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/d/d5/Hikaru_Nakamura_%282016%29_crop.jpg')
file4 = URI.open('https://pbs.twimg.com/profile_images/1211397117069135872/-cSzz3KV_400x400.png')
file5 = URI.open('https://www.ichess.net/wp-content/uploads/2013/05/Round4VishyAnand.jpg')
file6 = URI.open('https://www.rubiconline.com/wp-content/uploads/2020/11/IMG_7046.jpg')
file7 = URI.open('https://i2.wp.com/thezugzwangblog.com/wp-content/uploads/2015/03/Magnus-Carlsen.jpg')
file8 = URI.open('https://app.fide.com/upload/4756/eed84a5b2543a66b9e05b6149930c548.jpg')
file9 = URI.open('https://jugadoresdeajedrez.com/wp-content/uploads/2020/08/Susan-Polgar.jpg')

user1.photo.attach(io: file1, filename: 'caruana.jpg', content_type: 'image/jpg')
user2.photo.attach(io: file2, filename: 'yifan.jpg', content_type: 'image/jpg')
user3.photo.attach(io: file3, filename: 'nakamura.jpg', content_type: 'image/jpg')
user4.photo.attach(io: file4, filename: 'firouza.jpg', content_type: 'image/png')
user5.photo.attach(io: file5, filename: 'anand.jpg', content_type: 'image/jpg')
user6.photo.attach(io: file6, filename: 'harmon.jpg', content_type: 'image/jpg')
user7.photo.attach(io: file7, filename: 'carlsen.jpg', content_type: 'image/jpg')
user8.photo.attach(io: file8, filename: 'anish.jpg', content_type: 'image/jpg')
user9.photo.attach(io: file9, filename: 'polgar.jpg', content_type: 'image/jpg')

bio1 = 'Fabiano Luigi Caruana (born July 30, 1992) is an Italian-American chess player. A chess prodigy,
  Caruana became a grandmaster at the age of 14 years.'
bio2 = 'Hou Yifan is a Chinese chess grandmaster,
  four-time Women World Chess Champion and the second highest rated female player of all time.'
bio3 = 'Hikaru Nakamura (born December 9, 1987) is an American chess grandmaster and streamer.
  he was at the time the youngest American to earn the title of Grandmaster in 2003.'
bio4 = 'Alireza Firouzja is an Iranian-French chess grandmaster. Firouzja has held the No. 2 position in the FIDE world rankings since 2021, and is the youngest ever
  2800-rated player.'
bio5 = 'Viswanathan "Vishy" Anand is an Indian chess grandmaster and a five-time world chess champion. He became the first grandmaster from India in 1988.'
bio6 = 'Elizabeth "Beth" Harmon is a fictional character and the main protagonist in the Walter
  Tevis novel The Queens Gambit.'
bio7= 'Sven Magnus Øen Carlsen is a Norwegian chess grandmaster who is the reigning five-time World Chess Champion. '
bio8 = 'Anish Kumar Giri is a Dutch chess grandmaster. A chess prodigy, he completed
 the requirements for the title Grandmaster at the age of 14 years, 7 months and 2 days.'
bio9 = 'Susan Polgar
is a Hungarian and American chess grandmaster. Polgár was Women World Champion from 1996 to 1999.'


gm1 = Grandmaster.new(fide_id: 2020009, elo_rating: 2792, country: 'United States of America', bio: bio1, language: 'english', user: user1)
gm1.save!
gm2 = Grandmaster.new(fide_id: 8602980, elo_rating: 2658, country: 'China', bio: bio2, language: 'english', user: user2)
gm2.save!
gm3 = Grandmaster.new(fide_id: 2016192, elo_rating: 2736, country: 'United States of America', bio: bio3, language: 'english', user: user3)
gm3.save!
gm4 = Grandmaster.new(fide_id: 12573981, elo_rating: 2804, country: 'France', bio: bio4, language: 'french', user: user4)
gm4.save!
gm5 = Grandmaster.new(fide_id: 5000017, elo_rating: 2751, country: 'India', bio: bio5, language: 'english', user: user5)
gm5.save!
gm6 = Grandmaster.new(fide_id: 10000000, elo_rating: 2800, country: 'United States of America', bio: bio6, language: 'english', user: user6)
gm6.save!
gm7 = Grandmaster.new(fide_id: 1503014, elo_rating: 2865, country: 'Norway', bio: bio7, language: 'english', user: user7)
gm7.save!
gm8 = Grandmaster.new(fide_id: 24116068, elo_rating: 2772, country: 'Netherlands', bio: bio8, language: 'english', user: user8)
gm8.save!
gm9 = Grandmaster.new(fide_id: 700088, elo_rating: 2577, country: 'Hungary', bio: bio9, language: 'english', user: user9)
gm9.save!

puts 'Finished!'

booking1 = Booking.create!(status: "accepted", message: "Hey! I want to learn from you :)", user: user2, grandmaster: gm1)
booking2 = Booking.create!(status: "rejected", message: "Hey! I want to learn from you :)", user: user1, grandmaster: gm2)
booking3 = Booking.create!(message: "Hey! I want to learn from you :)", user: user2, grandmaster: gm1)
booking4 = Booking.create!(message: "Please teach me!", user: user3, grandmaster: gm2)
