class CarsController < ApplicationController
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

  def delete
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:brand, :price_per_hour, :milage, :photo, :price_per_day, :user_id)
  end
end
