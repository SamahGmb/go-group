class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:title].present?
      sql_query_title = "title ILIKE :title"
      @events = Event.where(sql_query_title, title: "%#{params[:title]}%")
    elsif params[:location].present?
      sql_query_location = "location ILIKE :location"
      @events = Event.where(sql_query_location, location: "%#{params[:location]}%")
    else
      @events = Event.all
    end
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

end
