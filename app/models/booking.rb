class Booking < ApplicationRecord
  belongs_to :grandmaster
  belongs_to :user
  has_one :grandmaster_user, through: :grandmaster, source: :user
end
