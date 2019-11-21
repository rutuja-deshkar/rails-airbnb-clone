class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @spaces = Space.geocoded
    if params[:spaces][:address].present?
      @spaces = Space.near(params[:spaces][:address], 20)
    else
      @spaces = Space.all
    end

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "/shared/info_window", locals: { space: space }),
        image_url: helpers.asset_url('monster1.jpg')
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
      redirect_to spaces_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @space.update(space_params)
      redirect_to @space, notice: 'Space was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @space.destroy
    redirect_to spaces_path, notice: 'Space was successfully deleted.'
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :max_capacity, :price_per_day, :photo)
  end
end
