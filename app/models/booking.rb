class Booking < ApplicationRecord
  belongs_to :grandmaster, dependent: :destroy
  belongs_to :user, dependent: :destroy
  has_one :grandmaster_user, through: :grandmaster, source: :user
end
