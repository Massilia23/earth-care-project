class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update]
  before_action :set_bunker, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.new
    @mission = Booking.new(booking: @mission)
    @mission = @booking.mission
  end

  # def total_days
  #   self.end_date - self.start_date
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.mission = @mission
    @booking.user = current_user
    if @booking.save
      redirect_to mission_path(@mission)
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user, :mission)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_bunker
    @mission = Mission.find(params[:mission_id])
  end
end






end
