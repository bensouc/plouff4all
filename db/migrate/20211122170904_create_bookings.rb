class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :swimming_pool_id
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :total_price

      t.timestamps
    end
  end
end
