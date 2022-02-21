class Booking < ApplicationRecord
  belongs_to :grandmaster, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
