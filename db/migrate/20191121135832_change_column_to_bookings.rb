class ChangeColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :confirmation, :boolean, default: true
  end
end
