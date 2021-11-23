class UpdatePetFriendlyToSwimmingPool < ActiveRecord::Migration[6.0]
  def change
    t.change :pets_friendly_boolean, :boolean
  end
end
