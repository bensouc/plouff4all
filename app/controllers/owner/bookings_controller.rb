class Owner::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings_as_owner
    @pools = current_user.swimming_pools
    @my_bookings = current_user.bookings_as_renter
    @swimming_pools = SwimmingPool.all.sample(4)
  end
  def accept
    @booking = Booking.find(params[:id])
    @booking.status = 'accepted'
    @booking.save
    redirect_to owner_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = 'declined'
    @booking.save
    redirect_to owner_bookings_path
  end
end
