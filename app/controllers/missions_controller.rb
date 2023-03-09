class MissionsController < ApplicationController
  before_action :set_mission, only: %i[show edit update destroy]
  # before_action :authenticate_user!

  def index
    @missions = Mission.all
    # @markers = @missions.geocoded.map do |mission|
    #   {
    #     lat: mission.latitude,
    #     lng: mission.longitudemissi
    #   }
    # end
    # #geocodage en cours ici -myriam
  end

  def show
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
