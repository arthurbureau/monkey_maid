class MonkeysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @monkeys = Monkey.all
    @geolocalized_monkeys = Monkey.where.not(latitude: nil, longitude: nil)

    @markers = @geolocalized_monkeys.map do |monkey|
      {
        lat: monkey.latitude,
        lng: monkey.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { monkey: monkey }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dzh1pkhi5/image/upload/v1558615638/logo_flat_bbjaxl.png')
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
