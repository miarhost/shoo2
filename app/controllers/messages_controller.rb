require 'json'

class MessagesController < ApplicationController

  def index
  	@messages = Message.all
  end

  def create 
  	@message = Message.new(message_params)
  	@message.to_json
  	 respond_to do |format|
  	  if @message.save
  	    format.html { redirect_to @messages, notice: "New message is received" }
  		format.json { render :index, status: :created, location: @message }
       else
    	format.html { render :index, notice: "Message can't be processed due to #{@message.errors.count} errors" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
  	   end
    end
  end

  def sort_amount
  	@messages = Message.all
  	@message = @messages.sort_by{|message| message.amount}
  end

  private


  def message_params
  	params.require(:message).permit(:first_name, :last_name, :email, :amount)
  end

end
