class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @mission = @chatroom.mission
    @message = Message.new
  end
end
