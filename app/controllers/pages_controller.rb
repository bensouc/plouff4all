class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @swimming_pools = SwimmingPool.all.sample(4)
  end
end
