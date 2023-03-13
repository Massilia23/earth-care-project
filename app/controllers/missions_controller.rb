class MissionsController < ApplicationController
  before_action :set_mission, only: %i[show edit update destroy]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @missions = Mission.all

  end

  def show
    @booking = Booking.find_by(user: current_user, mission: @mission)
    if @booking.nil?
      @booking = Booking.new
      @declined_booking = DeclinedBooking.new
    else
      @voucher = Voucher.new
    end
    @mission_marker =
      {
        lat: @mission.latitude,
        lng: @mission.longitude
      }
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)


    @mission.user = current_user
    if @mission.save
      redirect_to missions_path(@mission)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @mission.update(mission_params)
      redirect_to missions_path(@mission)
    else
      render :edit
    end
  end

  def destroy
    @mission.destroy
    redirect_to missions_path(@mission)
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:title, :description, :start_date, :end_date, :location, :reward, :photo_url, :duration, :dess_code, :user)
  end

end
