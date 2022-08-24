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
    # I calculate the time of renting
    # I define the plane of this booking
    @plane = Plane.find(params[:plane_id])
    @booking.plane = @plane
    # I calculate the price according to the plane price
    # I check the user
    @booking.user = current_user
    authorize @plane
    if checking_availability && @booking.save
      redirect_to plane_path(@plane)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.destroy
    authorize @booking
    redirect_to bookings_path(booking.user), status: :see_other
  end

  private



  def checking_availability
    @time = (@booking.end_date.strftime('%s').to_i - @booking.start_date.strftime('%s').to_i)
    @price = @time * @plane.price_per_hour / 3600
    @booking.price = @price
    @available = true
    return @available if @plane.bookings.empty?

    @plane.bookings.each do |booking|
      start = @booking.start_date.strftime('%s')
      endd = @booking.end_date.strftime('%s')

      if start > booking.start_date.strftime('%s') && start < booking.end_date.strftime('%s')
        @available = false
        flash.now[:notice] = "Not available this date."
      elsif endd > booking.start_date.strftime('%s') && endd < booking.end_date.strftime('%s')
        @available = false
        flash.now[:notice] = "Not available this date."
      elsif start < booking.start_date.strftime('%s') && endd > booking.end_date.strftime('%s')
        @available = false
        flash.now[:notice] = "Not available this date."
      end
    end
    @available
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :plane_id)
  end
end
