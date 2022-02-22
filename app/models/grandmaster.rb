class Grandmaster < ApplicationRecord
  # has_many :users
  has_many :bookings
  belongs_to :user


  validates :fide_id, presence: true, uniqueness: true
  validates :elo_rating, presence: true
end
