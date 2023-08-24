class AddCheckoutOnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :checkout_on, :date
  end
end
