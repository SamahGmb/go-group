class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @marker =
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
    @booking = Booking.new
  end

  def search
    @search = Event.find_by(title: params[:search])
  end

end
