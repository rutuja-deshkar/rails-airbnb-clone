class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    if params[:spaces][:address].present?
      @spaces = Space.where("address ILIKE ?", "%#{params[:spaces][:address]}%")
    else
      @spaces = Space.all
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
    params.require(:space).permit(:name, :description, :address, :max_capacity, :price_per_person, :photo)
  end
end
