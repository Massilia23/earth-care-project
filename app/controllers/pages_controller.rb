class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[home profile]
  def home
    @missions = Mission.all
  end

  def profile
    @missions = Mission.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end

  def calendar
  end
end
