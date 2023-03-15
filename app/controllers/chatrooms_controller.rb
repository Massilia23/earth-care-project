class ChatroomsController < ApplicationController
  def show
    @mission = Mission.find(params[:mission_id])
    @chatroom = @mission.chatroom
    @message = Message.new
  end
end
