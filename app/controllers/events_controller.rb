class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR location ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
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
    @events = events.where(user: current_user)
  end

  def edit
  end

  def update
    @event = Event.update(event_params)
  end

  def destroy
    @event.destroy
    redirect_to my_events_events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :location, :details, :photo)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
