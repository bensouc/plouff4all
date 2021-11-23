class UpdatePetFriendlyToSwimmingPool < ActiveRecord::Migration[6.0]
  def change
    rename_column :swimming_pools, :pets_friendly_boolean, :pets_friendly
  end
end
