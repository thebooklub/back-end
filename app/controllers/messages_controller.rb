class MessagesController < ApplicationController

    def get_messages 
        # @user.get_chat(params[:id])
        messages = Message.where(sender_id: @user.id, recipient_id: params[:id]).or(Message.where(sender_id: params[:id], recipient_id: @user.id))

        render json: messages        
    end

end
