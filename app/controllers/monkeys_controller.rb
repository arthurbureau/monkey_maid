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

  def edit
    @monkey = Monkey.find(params[:id])
    if current_user == @monkey.user
    else
      flash[:alert] = "Sorry, you are not authorized to modified the monkey"
      redirect_to monkeys_path
    end
  end

  def update
    @monkey = Monkey.find(params[:id])
    if @monkey.update(set_monkey_params)
      flash[:notice] = "Yay! 🎉 you have successfully udpate your monkey."
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    @monkey = Monkey.find(params[:id])
    if current_user == @monkey.user
      @monkey.destroy
      flash[:alert] = "Congrats, you have deleted the monkey"
      redirect_to profile_path
    else
      flash[:alert] = "Sorry, you are not authorized to modified the monkey"
      redirect_to monkey_path(@monkey)
    end
  end

  private

  def set_monkey_params
    params.require(:monkey).permit(:name, :speciality, :description, :price, :picture, :address)
  end
end
