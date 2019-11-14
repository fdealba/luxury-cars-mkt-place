class PagesController < ApplicationController

  def home
  end

  def dashboard
    @user = current_user
    # @user_booking = @user.booking
  end
end
