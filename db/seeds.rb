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

user1 = User.create!(email: "bob@chess.com", name: "Bob Chess", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "lali@chess.com", name: "Lali Kickass", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "mat@chess.com", name: "Mathias Grand", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "miq@chess.com", name: "Miquel Sogood", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "chris@chess.com", name: "Chris Notbad", password: "123456", password_confirmation: "123456")
user6 = User.create!(email: "zorg@chess.com", name: "Zorg", password: "123456", password_confirmation: "123456")
user7 = User.create!(email: "adam@chess.com", name: "Adam", password: "123456", password_confirmation: "123456")

file1 = URI.open('https://es.chessbase.com/Portals/all/thumbs/069/69539.jpeg')
file2 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Hou_Yifan_%2829762728494%29_%28cropped%29.jpg/1920px-Hou_Yifan_%2829762728494%29_%28cropped%29.jpg')
file3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/d/d5/Hikaru_Nakamura_%282016%29_crop.jpg')
file4 = URI.open('https://pbs.twimg.com/profile_images/1211397117069135872/-cSzz3KV_400x400.png')
file5 = URI.open('https://www.ichess.net/wp-content/uploads/2013/05/Round4VishyAnand.jpg')
file6 = URI.open('https://www.rubiconline.com/wp-content/uploads/2020/11/IMG_7046.jpg')
file7 = URI.open('https://i2.wp.com/thezugzwangblog.com/wp-content/uploads/2015/03/Magnus-Carlsen.jpg')

user1.photo.attach(io: file1, filename: 'caruana.jpg', content_type: 'image/jpg')
user2.photo.attach(io: file2, filename: 'yifan.jpg', content_type: 'image/jpg')
user3.photo.attach(io: file3, filename: 'nakamura.jpg', content_type: 'image/jpg')
user4.photo.attach(io: file4, filename: 'firouza.jpg', content_type: 'image/png')
user5.photo.attach(io: file5, filename: 'anand.jpg', content_type: 'image/jpg')
user6.photo.attach(io: file6, filename: 'harmon.jpg', content_type: 'image/jpg')
user7.photo.attach(io: file7, filename: 'carlsen.jpg', content_type: 'image/jpg')

bio1 = 'Fabiano Luigi Caruana (born July 30, 1992) is an Italian-American chess player. A chess prodigy,
  Caruana became a grandmaster at the age of 14 years,
  11 months, and 20 days—the youngest grandmaster in the history of both Italy and the United States at the time.'
bio2 = 'Hou Yifan (Chinese: 侯逸凡; pinyin: Hóu Yìfán audio speaker iconpronunciation (help·info); born 27 February 1994)[1][2][3] is a Chinese chess grandmaster,
  four-time Women World Chess Champion and the second highest rated female player of all time.[4] Once a chess prodigy,
  she was the youngest female player ever to qualify for the title of grandmaster
  (at the age of 14 years, 6 months, 2 days) and the youngest ever to win the Women World Chess Championship (at age 16).'
bio3 = 'Hikaru Nakamura (born December 9, 1987) is an American chess grandmaster and streamer.
  A chess prodigy, he was at the time the youngest American to earn the title of Grandmaster in 2003, aged 15 years and 79 days.
  Nakamura is a five-time United States champion.[2] He won the 2011 edition of Tata Steel
  Chess Tournament Group A and represented the United States at five Chess Olympiads, winning a team gold medal and two team bronze medals.'
bio4 = 'Alireza Firouzja (Persian: علی‌رضا فیروزجا, Persian pronunciation: [æliːɾezɑː fiːɾuːzˈdʒɑː]; born 18 June 2003) is an Iranian-French chess grandmaster. Firouzja has held the No. 2 position in the FIDE world chess rankings since December 1, 2021, and is the youngest ever
  2800-rated player, beating the previous record set by Magnus Carlsen by more than five months.'
bio5 = 'Viswanathan "Vishy" Anand (born 11 December 1969) is an Indian chess grandmaster and a five-time world chess champion.[2] He became the first grandmaster from India in 1988,
  and is one of the few players to have surpassed an Elo rating of 2800, a feat he first achieved in 2006.'
bio6 = 'Elizabeth "Beth" Harmon is a fictional character and the main protagonist in the Walter
  Tevis novel The Queens Gambit and the Netflix drama miniseries
  of the same name, in which she is portrayed by Anya Taylor-Joy'
bio7= 'Sven Magnus Øen Carlsen[a] (born 30 November 1990)[1][2] is a Norwegian chess grandmaster who is the reigning five-time World Chess Champion.
 Carlsen is also a three-time World Rapid Chess Champion and five-time World Blitz Chess Champion. '


gm1 = Grandmaster.new(fide_id: 12345, elo_rating: 2521, country: 'Malta', bio: 'I like cats and chess.', language: 'french', user: user1)
gm1.save!
gm2 = Grandmaster.new(fide_id: 1111, elo_rating: 2000, country: 'Georgia', bio: "I'm simply the best.", language: 'english', user: user2)
gm2.save!
gm3 = Grandmaster.new(fide_id: 2222, elo_rating: 2700, country: 'Denmark', bio: "I'm the best after Lali.", language: 'english', user: user3)
gm3.save!
gm4 = Grandmaster.new(fide_id: 43224, elo_rating: 2335, country: 'Georgia', bio: "Good.", language: 'english', user: user4)
gm4.save!
gm5 = Grandmaster.new(fide_id: 574221, elo_rating: 2540, country: 'Denmark', bio: "I like chess apps.", language: 'english', user: user5)
gm5.save!
gm6 = Grandmaster.new(fide_id: 57422, elo_rating: 2543, country: 'Armenia', bio: "I'm fun.", language: 'english', user: user6)
gm6.save!
gm7 = Grandmaster.new(fide_id: 57434, elo_rating: 2560, country: 'Spain', bio: "I'm fun.", language: 'english', user: user7)
gm7.save!


puts 'Finished!'

booking1 = Booking.create!(status: "accepted", message: "Hey! I want to learn from you :)", user: user2, grandmaster: gm1)
booking2 = Booking.create!(status: "rejected", message: "Hey! I want to learn from you :)", user: user1, grandmaster: gm2)
booking3 = Booking.create!(message: "Hey! I want to learn from you :)", user: user2, grandmaster: gm1)
booking4 = Booking.create!(message: "Lali, you are the best, please teach me!", user: user3, grandmaster: gm2)
