class AddUserIdToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :user_id, :integer
    add_column :bookings, :booking_number, :string
    add_column :bookings, :amount, :decimal
    add_column :bookings, :paid, :boolean
  end
end
