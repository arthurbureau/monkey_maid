class DashboardsController < ApplicationController
  def profile
    method_name
  end

  private

  def method_name
    @number_of_bookings = current_user.bookings.count
  end
end
