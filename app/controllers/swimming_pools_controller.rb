class SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = SwimmingPool.all
  end


end
