class CalendarsController < ApplicationController

  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # Or, for a weekly view:
    @missions = current_user.missions
    @mission_of_current_user = Mission.where(user: current_user)
    @missions = @missions.where(start_time: (start_date.beginning_of_week..start_date.end_of_week))
  end
end
