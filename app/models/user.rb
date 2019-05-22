class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :monkeys
  has_many :bookings

  mount_uploader :avatar, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  SPECIALITY = ["Nannie", "Gardener", "Chef", "Singer", "Clown", "Killer"]
end
