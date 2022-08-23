class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]

  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
      if @booking.save
        redirect_to booking_path(@user)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def destroy
    @booking = Booking.destroy
    redirect_to bookings_path(booking.user), status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :comment)
  end
end
