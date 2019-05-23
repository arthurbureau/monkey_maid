class BookingsController < ApplicationController
  before_action :find_monkey, only: [:new, :create]
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @booking.user = current_user
  end

  def create
    @booking = Booking.new(set_booking_params)
    @booking.user = current_user
    @booking.monkey = @monkey

    if @booking.save
      flash[:notice] = "Yay! 🎉 you have successfully rent a monkey."
      redirect_to profile_path
      # Ajouter une alerte pour confirmer que le booking est ajoute
    else
      render :new
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  #   if current_user == @booking.user
  #   else
  #     flash[:alert] = "Sorry, you are not authorized to modified the booking"
  #     redirect_to monkeys_path
  #   end
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   if @booking.update(set_booking_params)
  #     flash[:notice] = "Yay! 🎉 you have successfully udpate your booking."
  #     redirect_to profile_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @booking = Booking.find(params[:id])
    if current_user == @booking.user
      @booking.destroy
      flash[:alert] = "Congrats, you have deleted the booking"
      redirect_to profile_path
    else
      flash[:alert] = "Sorry, you are not authorized to modified the booking"
      redirect_to monkey_path(@monkey)
    end
  end

  private

  def find_monkey
    @monkey = Monkey.find(params[:monkey_id])
  end

  def set_booking_params
    params.require(:booking).permit(:checkin, :checkout)
  end
end
