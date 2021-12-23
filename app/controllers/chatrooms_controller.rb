class ChatroomsController < ApplicationController

    def index
        @chatrooms = Chatroom.where.not(user_id: current_user.id )
        @mychatroom = Chatroom.where(user_id: current_user.id )
    end

    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
    end

end
