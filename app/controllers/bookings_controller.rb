class BookingsController < ApplicationController

    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to poster_path(@booking.poster)
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to bookings_path, status: :see_other
    end

    def checkout
      @booking = Booking.find(params[:id])
    end

    def index
      @bookings = Booking.all
    end

    def edit
    end

    def new
      @booking = Booking.new
    end

    private

    def booking_params
      params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end
  end
