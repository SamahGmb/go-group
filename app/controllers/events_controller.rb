class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:title].present?
      sql_query_title = "title ILIKE :title"
      @events = Event.where(sql_query_title, title: "%#{params[:title]}%")
    elsif params[:location].present?
      sql_query_location = "location ILIKE :location"
      @events = Event.where(sql_query_location, location: "%#{params[:location]}%")
    elsif params[:start_date].present?
      @events = Event.where(start_date: params[:start_date])
    else
      @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save
    redirect_to event_path(@event)
  end

  def show
    @marker =
      {
        lat: @event.latitude,
        lng: @event.longitude
      }
    @booking = Booking.new
  end

  def my_events
    @events = Event.where(user: current_user)
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to my_events_events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :location, :details, :photo, :user_id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
