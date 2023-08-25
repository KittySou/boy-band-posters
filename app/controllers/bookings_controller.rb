class BookingsController < ApplicationController
  def index
    @bookings_user = Booking.where(user: current_user)
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @poster = Poster.find(params[:poster_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @poster = Poster.find(params[:poster_id])
    @booking.poster = @poster

    if @booking.save
      redirect_to booking_confirmation_path(@booking)
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

    def show
      @booking = Booking.find(params[:id])
    end

    def booking_confirmation
      set_booking
      @poster = @booking.poster
      @final_price = @poster.price_per_day * (@booking.checkout_on - @booking.checkin_on)
    end

    private

    def set_booking
      @booking = Booking.find(params[:id])
    end

  def total_price
    @poster = Poster.find(params[:id])
    @total_days = (@booking.checkout_on - @booking.checkin_on).to_i
    @total_price = total_days * @booking.price_per_day
  end

  def booking_params
    params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status)
  end

end
