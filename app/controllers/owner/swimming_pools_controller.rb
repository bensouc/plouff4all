class Owner::SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = current_user.swimming_pools
  end

  def new
    @swimming_pool = SwimmingPool.new
  end
end
