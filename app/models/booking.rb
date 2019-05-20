class Booking < ApplicationRecord
  belongs_to :monkey
  belongs_to :user

  enum status: [:pending, :canceled, :booked]
end
