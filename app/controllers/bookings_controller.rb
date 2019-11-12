class BookingsController < ApplicationController
  def new
    @booking = Bookng.new
    #form for booking HTML
    # this form can be in the car show page
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    # @booking.car = @car
    @car.booking = @booking.car
    @current_user = @booking.user
    @booking.save
    redirect_to car_path(@car)
  end

  private

  def booking_params
    params.require(:booking).permit(:renting_time, :status))
  end
end
