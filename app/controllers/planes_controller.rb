class PlanesController < ApplicationController
  before_action :set_plane, only: [:show, :destroy]

  def index
    @planes = policy_scope(Plane)
  end

  def show
    authorize @plane
  end

  def new
    @plane = Plane.new
    authorize @plane
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    authorize @plane
    if @plane.save
      redirect_to plane_path(@plane)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @plane
    @plane.destroy
    redirect_to planes_path, status: :see_other
  end

  def edit
    @plane = Plane.find(params[:id])
    authorize @plane
  end

  def update
    @plane = Plane.find(params[:id])
    authorize @plane
    @plane.update(plane_params)
    redirect_to plane_path(@plane)
  end

  private

  def set_plane
    @plane = Plane.find(params[:id])
  end

  def plane_params
    params.require(:plane).permit(:name, :model, :price_per_hour, :seats, :overview, :address, photos: [])
  end
end
