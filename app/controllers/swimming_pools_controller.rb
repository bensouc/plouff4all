class SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = Swimming_pool.all
  end
end
