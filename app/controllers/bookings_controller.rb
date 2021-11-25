class BookingsController < ApplicationController
  def index

    @bookings_as_owner = current_user.bookings_as_owner
    @bookings_as_renter = current_user.bookings_as_renter
  end

  def new
    @new_booking = Booking.new
    @swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
  end

  def create
    #if current_user
      @new_booking = Booking.new(booking_params)
      @new_booking.status = "pending"
      @new_booking.user = current_user
      @new_booking.swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
      @swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
      @new_booking.save

      redirect_to bookings_path

      # @swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
    #else
      #path vers login
    #end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

    ###################################################################################
    # Je veux finir avec :                                                            #
    # @booking = Booking.new(current_user_id, swimming_pool_id, start_date, end_date) #
    ###################################################################################

end
