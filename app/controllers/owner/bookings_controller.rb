class Owner::BookingsController < ApplicationController
  def index
    @bookings = User.bookings_as_owner
  end
end
