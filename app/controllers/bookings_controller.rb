class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update]
  before_action :set_mission, only: %i[new create]

  def new
    @booking = Booking.new
    @mission = Mission.find(params[:mission_id])

    @booking.mission = @mission
  end

  def show
    @mission = @booking.mission
  end

  def create
    @booking = Booking.new
    @booking.mission = @mission
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status_owner, :status_user, :user, :mission, :voucher)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_mission
    @mission = Mission.find(params[:mission_id])
  end
end
