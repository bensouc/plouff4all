class AddCoordinatesToSwimmingPool < ActiveRecord::Migration[6.0]
  def change
    add_column :swimming_pools, :latitude, :float
    add_column :swimming_pools, :longitude, :float
  end
end
