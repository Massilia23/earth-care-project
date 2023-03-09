class CalendarsController < ApplicationController

  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # Or, for a weekly view:
    @meetings = Meeting.where(start_time: (start_date.beginning_of_week + 1)..(start_date.end_of_week - 1))
  end
end
