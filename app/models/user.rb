class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy # bookings created by the user
  has_one :grandmaster, dependent: :destroy
  has_many :received_bookings, through: :grandmaster, source: :bookings

  has_one_attached :photo

  validates :name, presence: true
end
