class Grandmaster < ApplicationRecord
  # has_many :users
  # has_many :bookmarks

  validates :fullname, presence: true
  validates :fide_id, presence: true, uniqueness: true
  validates :elo_rating, presence: true
end
