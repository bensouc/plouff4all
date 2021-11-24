class BookingsController < ApplicationController
  def new
    @new_booking = Bookings.new
  end
  def create
    @booking = Bookings.new(user_id: current_user.id, swimming_pool_id: params[:id], start_date: )
  end
end
