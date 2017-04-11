class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :fan_id
      t.integer :grid_id
      t.decimal :latitude, precision: 10, scale: 6, null: false, default: 0.0
      t.decimal :longitude, precision: 10, scale: 6, null: false, default: 0.0

      t.timestamps
    end
  end
end
