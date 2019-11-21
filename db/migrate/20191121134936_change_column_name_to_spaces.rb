class ChangeColumnNameToSpaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :price_per_person, :price_per_day
  end
end
