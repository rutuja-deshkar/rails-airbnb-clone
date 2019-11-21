class AddFieldsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :confirmation, :boolean
    add_column :bookings, :number_of_persons, :string
  end
end
