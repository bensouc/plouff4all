class UpdatePetType < ActiveRecord::Migration[6.0]
  def change
    change_table :swimming_pools do |t|
      t.change :pets_friendly, :boolean
    end
  end
end
