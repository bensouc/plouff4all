class PagesController < ApplicationController
  def home
    @swimming_pools = SwimmingPool.all
  end
end
