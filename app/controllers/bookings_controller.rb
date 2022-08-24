class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
  end

  def show
    authorize @booking
  end

  def new
    @plane = Plane.find(params[:plane_id])
    authorize @plane
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @plane = Plane.find(params[:plane_id])
    @booking.plane = @plane
    @booking.user = current_user
    authorize @plane
    if @booking.save
      redirect_to plane_path(@plane)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    
    authorize @booking
    @booking.destroy
    
    
    
    redirect_to planes_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :comment, :plane_id)
  end
end
