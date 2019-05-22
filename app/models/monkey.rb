class Monkey < ApplicationRecord

  SPECIALITY = ["Nannie", "Gardener", "Chef", "Singer", "Clown", "Killer"]

  has_many :bookings
  belongs_to :user

  mount_uploader :picture, PhotoUploader

  validates :name, presence: true
  validates :speciality, presence: true, inclusion: { in: SPECIALITY }
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :picture, presence: true
end
