class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :grandmaster, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :encrypted_password, presence: true
end