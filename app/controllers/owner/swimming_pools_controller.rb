class Owner::SwimmingPoolsController < ApplicationController
  def index
    @swimming_pools = current_user.swimming_pools
  end

end
