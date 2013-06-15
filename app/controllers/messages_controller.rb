class MessagesController < ApplicationController

  def index 
    @messages = Message.find_all_by_game_id(params[:game_id])
    #Message.find_all_by_game_id(params[:game_id])
    render :json => @messages
  end

  def create
    @message = Message.create!(params[:message])
    render :json => @message
  end
end
