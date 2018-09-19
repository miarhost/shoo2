require 'json'

class MessagesController < ApplicationController

 skip_before_action :verify_authenticity_token
 
  def index
  	@messages = Message.all

  end

  def create 
  	@message = Message.new(first_name: message_params[:first_name],last_name: message_params[:last_name],email: message_params[:email], amount: message_params[:amount])
   
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
    @messages.sort {|a,b| b.amount <=> a.amount }
  end

def sort_name 
  @messages.order('messages.first_name')
end

private

def message_params
  JSON.parse(params[:first_name, :last_name, :email, :amount])
end

end
