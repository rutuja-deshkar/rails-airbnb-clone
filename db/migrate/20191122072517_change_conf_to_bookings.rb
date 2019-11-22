class ChangeConfToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :confirmation, :boolean, default: false
  end
end
