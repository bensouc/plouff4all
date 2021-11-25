class SwimmingPoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @swimming_pools = SwimmingPool.all

    if params[:query].present?
      @swimming_pools = SwimmingPool.where('address ILIKE ?', "%#{params[:query]}%")
    else
      @swimming_pools = SwimmingPool.all
    end
  end

  def show
    @swimming_pool = SwimmingPool.find(params[:id])
    @new_booking = Booking.new
    @swimming_pools = SwimmingPool.all.sample(4)
  end

  def edit
    @pool = SwimmingPool.find(params[:id])
  end
end
