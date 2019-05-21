class Monkey < ApplicationRecord
  has_many :bookings
  belongs_to :user

  mount_uploader :picture, PhotoUploader
end
