class ProfilesController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
    @spaces = Space.where(user_id: current_user)
  end
end
