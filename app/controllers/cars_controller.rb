class CarsController < ApplicationController
  before_action :set_car, only: [:edit, :update, :show]
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
  end

  def edit
    @car
  end

  def update
    @car.update(car_params)
    redirect_to @car
  end

  def index
    @cars = Car.all
  end

  def show
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :price_per_hour, :milage, :photo, :price_per_day, :user_id, :plate_number)
  end
end
