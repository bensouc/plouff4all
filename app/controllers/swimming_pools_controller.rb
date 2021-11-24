class SwimmingPoolsController < ApplicationController
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
    @swimming_pools = SwimmingPool.all.sample(4)
  end
end
