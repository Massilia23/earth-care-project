class ChatroomsController < ApplicationController
  def show
    @mission = Mission.find(params[:mission_id])
    @chatroom = @mission.chatroom
    @message = Message.new
  end

  def create
    other_user = User.find(params[:user_id])
    @chatroom = Chatroom.create
    @chatroom.users << current_user
    @chatroom.users << other_user
    # redirect_to chatroom_path(@chatroom)
  end
end
