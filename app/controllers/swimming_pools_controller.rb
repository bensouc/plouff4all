class SwimmingPoolsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @swimming_pools = SwimmingPool.all

    if params[:query].present?
      @swimming_pools = SwimmingPool.where('address ILIKE ?', "%#{params[:query]}%")
    # else
    #   @swimming_pools = SwimmingPool.all
    end

    @markers = geo_marked(@swimming_pools)
    # @markers = @swimming_pools.geocoded.map do |pool|
    #   {
    #     lat: pool.latitude,
    #     lng: pool.longitude,
    #     info_marker: render_to_string(partial: "info_marker", locals: { pool: pool }),
    #     image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    #   }
    # end
  end

  def geo_marked(swimming_pools)
    swimming_pools.geocoded.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        info_marker: render_to_string(partial: "info_marker", locals: { pool: pool }),
        # image_url: helpers.asset_url('<%= cl_image_tag pool.photo.key %>')
      }
    end
  end

  def new
    @swimming_pool = SwimmingPool.new
  end

  def create
    @swimming_pool = SwimmingPool.new(pool_params)
    @swimming_pool.user = current_user
    @swimming_pool.save
    current_user.role = 'owner'
    current_user.save

    redirect_to swimming_pools_path
  end

  def show
    @swimming_pool = SwimmingPool.find(params[:id])
    @new_booking = Booking.new
    @swimming_pools = SwimmingPool.all.sample(4)
  end

  private

  def pool_params
    params.require(:swimming_pool).permit(
      :name, :description, :address, :length, :width, :max_depth,
      :price_per_day, :treatment, :temperature, :max_people,
      :kids_friendly, :pets_friendly, :photo
    )
  end
end
