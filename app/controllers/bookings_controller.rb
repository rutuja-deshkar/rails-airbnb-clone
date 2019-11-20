class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @space = Space.find(params[:space_id])
    @bookings = Booking.where(space_id: params[:space_id])
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @space = Space.find(params[:space_id])
    @booking.user = current_user
    @booking.space = @space
    if @booking.save!
      redirect_to profile_path, notice: 'Booking successful!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path, notice: 'Booking was successfully updated.'
  end

  def destroy
    @booking.destroy
    redirect_to profile_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:space_id, :start_date, :end_date)
  end
end
