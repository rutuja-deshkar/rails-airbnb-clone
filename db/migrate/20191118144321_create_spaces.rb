class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :max_capacity
      t.integer :price_per_person
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
