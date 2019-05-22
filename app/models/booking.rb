class Booking < ApplicationRecord
  belongs_to :monkey
  belongs_to :user

  enum status: [:pending, :canceled, :booked]

  validates :checkin, presence: true
  validates :checkout, presence: true
  validate :checkin_cannot_be_in_the_past, :checkin_cannot_be_greater_than_checkout
  private

  def checkin_cannot_be_in_the_past
    if self.checkin < Date.today
      errors.add(:checkin, "can't be in the past")
    end
  end

  def checkin_cannot_be_greater_than_checkout
    if self.checkin > self.checkout
      errors.add(:checkout, "checkout must be greater than checkin")
    end
  end

  # def discount_cannot_be_greater_than_total_value
  #   if self.checkin > self.checkout
  #     errors.add(:discount, "can't be greater than total value")
  #   end
  # end

end
