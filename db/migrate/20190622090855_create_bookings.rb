class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :staff_id
      t.integer :desk_id
      t.boolean :status, default: true
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end
end
