class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def receive(data)
    ActionCable.server.broadcast("chatroom_#{params[:chatroom]}", data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
