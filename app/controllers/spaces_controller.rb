class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  def index
    @spaces = Space.all
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to spaces_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @space.destroy
    redirect_to root_path, notice: 'Space was successfully destroyed.'
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :address, :max_capacity, :price_per_person, :photo)
  end
end
