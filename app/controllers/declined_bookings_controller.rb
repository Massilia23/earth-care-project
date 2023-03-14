class DeclinedBookingsController < ApplicationController
  def create
    @declined_booking = DeclinedBooking.new
    @declined_booking.user = current_user
    @declined_booking.mission = Mission.find(params[:mission_id])
    if @declined_booking.save
      redirect_to missions_path
    else
    end
  end
end
