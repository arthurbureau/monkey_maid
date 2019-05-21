class UsersController < ApplicationController
  def profile
    @number_of_bookings = current_user.bookings.count
    @number_of_monkeys = current_user.monkeys.count
  end
end
