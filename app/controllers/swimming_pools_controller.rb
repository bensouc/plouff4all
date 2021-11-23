class SwimmingPoolsController < ApplicationController

  def show
    @swimming_pool = SwimmingPool.find(params[:id])
  end
end
