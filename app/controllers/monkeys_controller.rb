class MonkeysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @monkeys = Monkey.all
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
    @monkey.destroy
  end

  private

  def set_monkey_params
    params.require(:monkey).permit(:name, :speciality, :description, :price, :picture, :address)
  end
end
