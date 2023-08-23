class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking _params)
    @booking.poster = @poster
    if @review.save
      redirect_to poster_path(@poster)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    set_booking
    @poster = @booking.poster
  end

  def update
    set_booking
    @booking.status = "Pending"
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking(@review.poster), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
