class PlanesController < ApplicationController
  before_action :set_plane, only: [:show, :destroy]

  def index
    @planes = Plane.all
  end

  def show

  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    if @plane.save
      redirect_to plane_path(@plane)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @plane.destroy
    redirect_to planes_path, status: :see_other
  end

  def edit
    @plane = Plane.find(params[:id])
  end

  def update
    @plane = Plane.find(params[:id])
    @plane.update(plane_params)
    redirect_to plane_path(@plane)
  end

  private

  def set_plane
    @plane = Plane.find(params[:id])
  end

  def plane_params
    params.require(:plane).permit(:name, :model, :price_per_hour, :seats, :overview, :adress)
  end
end
