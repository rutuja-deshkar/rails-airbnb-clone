class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show
  # def update_max_availability
  #   @space = Space.find(params[:id])
  #   @booking = Booking.where
  # end
  def index
    @spaces = Space.geocoded
    # set_search_query
    unless params[:spaces].nil?
      if params[:spaces][:address].present?
        @spaces = Space.near(params[:spaces][:address], 20)
      else
        @spaces = Space.all
      end
      # if params[:spaces][:start_date].present?
      #   start_date = Date.parse(params[:spaces][:start_date])
      #   end_date = Date.parse(params[:spaces][:end_date])
      #   @spaces = filter_by_date(@spaces, start_date, end_date )
      # end
    end

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "/shared/info_window", locals: { space: space }),
        image_url: helpers.asset_url('map_pin.png')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save!
      redirect_to spaces_path(spaces: { address: '' })
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @space.update(space_params)
      # redirect_to @space, notice: 'Space was successfully updated.'
      redirect_to profile_path, notice: 'Space was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @space.destroy
    # redirect_to spaces_path, notice: 'Space was successfully deleted.'
    redirect_to profile_path, notice: 'Space was successfully updated.'
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :max_capacity, :price_per_day, :photo, :latitude, :longitude)
  end

  # def filter_by_date(spaces, start_date, end_date)
  #   selection = list_dates(start_date, end_date)
  # end

  # def list_dates(start_date, end_date)
  #   i = start_date
  #   list = []
  #   while i < end_date do
  #     list.push[i]
  #     i += 1
  #   end

  # end
  # def set_search_query
  #   unless params[:spaces].nil?

  #     unless params[:spaces][:start_date].nil?
  #       # unless params[:spaces][:start_date].empty?
  #       #   begin
  #       #     start_date = Date.parse(params[:spaces][:start_date])
  #       #     end_date = Date.parse(params[:spaces][:end_date])
  #       #   rescue ArgumentError

  #       #   end

  #         if (start_date.is_a?(Date) && end_date.is_a?(Date))
  #           @date_selected_spaces = Space.joins(:bookings).where.not('start_date > ? AND end_date < ?', start_date, end_date)
  #           @spaces = (@spaces.nil? ? Space.all : @spaces) - @date_selected_spaces

  #         end
  #       else
  #         @spaces = Space.all
  #       end
  #     else
  #       @spaces = Space.all
  #     end


  #     unless params[:spaces][:address].nil?
  #       unless params[:spaces][:address].empty?
  #         # @spaces = @spaces.near(params[:spaces][:address], 20)
  #         new = @spaces.select { |space| space.address == params[:spaces][:address] }
  #       end
  #     end

  #   else
  #     @spaces = Space.all
  #   end
  # end
end
