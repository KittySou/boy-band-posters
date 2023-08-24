class AddCheckinOnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :checkin_on, :date
  end
end
