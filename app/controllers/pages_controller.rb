class PagesController < ApplicationController
#   skip_before_action :authenticate_user!, only: %i[home]
  def home
    @missions = Mission.all
  end

  def profile
    @missions = Mission.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @vouchers = Voucher.where(user: current_user)
    @voucher = Voucher.new
  end

  def calendar
  end
end
