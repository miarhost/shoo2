module Api::V1
  class MessagesController < ApplicationController

    before_action :set_message, only: [:show, :update, :destroy]

    def index
      @messages = Message.order('amount, first_name')
      render json: @messages
    end

    def report
      @messages = Message.filter(params.slice(:email, :last_name))
      render json: @messages
    end
  
    def show
      render json: @message
    end

    def find
      @message = apply_filters(filter_params).first
      if @message
        render({ json: @message, include: params[:include] }.merge(serialization_options))
      else
        render({ status: :not_found }.merge(serialization_options))
      end
    end   

    def create
      @message = Message.new(message_params)

      if @message.save
        render json: @message, status: :created, location: @message
      else
        render json: @message.errors, status: :unprocessable_entity
      end
    end

    def update
      if @message.update(message_params)
        render json: @message
      else
        render json: @message.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @message.destroy
    end

    private

    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:email, :first_name, :last_name, :amount)
    end

    def filter_params(params)
  params.slice(:status, :location, :starts_with)
end
  end
end