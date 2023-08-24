class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :poster, null: false, foreign_key: true
      t.date :checkin_on
      t.date :checkout_on
      t.decimal :value
      t.boolean :status

      t.timestamps
    end
  end
end
