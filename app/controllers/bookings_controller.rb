class BookingsController < ApplicationController
  before_action :find_monkey, only: [:new, :create]
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @monkey = Monkey.find(params[:monkey_id])
    @booking = Booking.new
    @booking.user = current_user
  end

  def create
    @monkey = Monkey.find(params[:monkey_id])
    @booking = Booking.new(set_booking_params)
    @booking.user = current_user
    @booking.monkey = @monkey
    @booking.status = 0

    if @booking.save
      redirect_to profile_path
      # Ajouter une alerte pour confirmer que le booking est ajoute
    else
      render :new
    end
  end

  private

  def find_monkey
    @booking = Booking.find(params[:id])
  end

  def set_booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end
end
