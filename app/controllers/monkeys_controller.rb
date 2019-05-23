class MonkeysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @monkeys = Monkey.all
    @geolocalized_monkeys = Monkey.where.not(latitude: nil, longitude: nil)

    @markers = @geolocalized_monkeys.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @monkey = Monkey.find(params[:id])
  end

  def new
    @monkey = Monkey.new
  end

  def create
    @user = current_user
    @monkey = Monkey.new(set_monkey_params)
    @monkey.user = @user
    if @monkey.save
      flash[:notice] = "Yay! 🎉 you have successfully add a new monkey."
      redirect_to profile_path
      # Ajouter une alerte pour confirmer que le monkey est ajoute
    else
      render :new
    end
  end

  private

  def set_monkey_params
    params.require(:monkey).permit(:name, :speciality, :description, :price, :picture)
  end
end
