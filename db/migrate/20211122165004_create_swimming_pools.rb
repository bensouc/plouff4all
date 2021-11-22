class CreateSwimmingPools < ActiveRecord::Migration[6.0]
  def change
    create_table :swimming_pools do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :address
      t.integer :length
      t.integer :width
      t.integer :max_depth
      t.integer :price_per_day
      t.string :treatment
      t.integer :temperature
      t.integer :max_people
      t.boolean :kids_friendly
      t.string :pets_friendly_boolean

      t.timestamps
    end
  end
end
