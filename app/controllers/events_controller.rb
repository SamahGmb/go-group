class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
  end
end
