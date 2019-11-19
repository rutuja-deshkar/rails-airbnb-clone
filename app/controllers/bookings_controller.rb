class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path, notice: 'Booking was successfully updated.'
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
