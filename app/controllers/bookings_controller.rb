class BookingsController < ApplicationController

  def index
  end

  def create
    @booking = Booking.new
    @booking.user  = current_user
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.save
    redirect_to bookings_path
  end
end
