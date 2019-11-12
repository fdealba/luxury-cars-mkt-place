class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.save
    redirect_to car_path(@car)
  end

  def index
  end

  private

  def booking_params
    params.require(:booking).permit(:renting_time)
  end
end

