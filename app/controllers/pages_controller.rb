class PagesController < ApplicationController
  def home
    @swimming_pools = SwimmingPool.all.sample(4)
  end
end
