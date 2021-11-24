class SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = SwimmingPool.all
  end

  def show
    @swimming_pool = SwimmingPool.find(params[:id])
    @swimming_pools = SwimmingPool.all.sample(4)
  end
end
