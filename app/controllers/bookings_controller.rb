class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
      @new_booking.total_price = (@new_booking.end_date - @new_booking.start_date).to_i * @swimming_pool.price_per_day
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
