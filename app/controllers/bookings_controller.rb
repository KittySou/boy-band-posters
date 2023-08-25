class BookingsController < ApplicationController
  def index
    @bookings_user = Booking.where(user: current_user)
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new('booking _params')
    @booking.poster = @poster
    if @review.save
      redirect_to poster_path(@poster)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def update
    # If statement for status, ALWAYS TRUE OR FALSE
    set_booking
    @booking.status = true
    @booking.save!
    redirect_to booking_path(@booking)
  end

    def index
      @bookings = Booking.all
    end

    def show
      @booking = Booking.find(params[:id])
    end


    private

    def booking_params
      params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status, :create)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end
=======

  def show
    @booking = Booking.find(params[:id])
  end

  def total_price
    @poster = Poster.find(params[:id])
    @total_days = (@booking.checkout_on - @booking.checkin_on).to_i
    @total_price = total_days * @booking.price_per_day
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
