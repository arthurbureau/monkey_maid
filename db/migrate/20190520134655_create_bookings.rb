class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :monkey, foreign_key: true
      t.references :user, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
