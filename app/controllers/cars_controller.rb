class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update, :show, :destroy]

  def new
    @car = Car.new
  end
  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
    authorize @car
  end

  def edit
    @car
    authorize @car
  end

  def update
    @car.update(car_params)
    redirect_to @car
  end

  def index
    @cars = Car.all
    @cars = Car.geocoded

    @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
    end
     if params[:query].present?
     @cars = Car.where('brand ILIKE ?', "%#{params[:query]}%")
  end
  end

  def show
    @marker = { lat: @car.latitude, lng: @car.longitude }
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :price_per_hour, :milage, :photo, :price_per_day, :user_id, :plate_number)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
