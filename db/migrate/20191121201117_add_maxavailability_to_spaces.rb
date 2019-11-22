class AddMaxavailabilityToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :max_availability, :string
  end
end
