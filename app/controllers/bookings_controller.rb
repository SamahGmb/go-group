class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.save
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
