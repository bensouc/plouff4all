class Owner::SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = current_user.swimming_pools
  end

  def new
    @pool = SwimmingPool.new
  end

  def create

  end
end
