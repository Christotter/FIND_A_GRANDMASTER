class Grandmaster < ApplicationRecord
  has_many :users
  has_many :bookmarks

  validate :fullname, presence: true
  validate :fide_id, presence: true, uniqueness: true
  validate :elo_rating, presence: true
end
