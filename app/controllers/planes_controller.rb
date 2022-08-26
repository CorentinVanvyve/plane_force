class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_policy_scoped, :only => :index
  before_action :set_plane, only: [:show, :destroy]

  def index
    if params[:start_date].present? && params[:end_date].present?
      start_date = params[:start_date].to_date
      end_date = params[:end_date].to_date
      @planes = Plane.left_joins(:bookings).where("bookings.end_date < ? OR bookings.start_date > ? OR bookings.id is null", start_date, end_date)
    else
      @planes = Plane.all
    end
  end

  def show
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
