class PagesController < ApplicationController

  def home
    @cars = Car.all
  end

  def dashboard
    @user = current_user
    @user_booking = @user.booking
  end
end
