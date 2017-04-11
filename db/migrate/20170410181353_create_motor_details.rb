class CreateMotorDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :motor_details do |t|
      t.integer :motor_id, null: false
      t.decimal :amperage, precision: 5, scale: 3, null: false, default: 0.0
      t.decimal :horsepower, precision: 5, scale: 3, null: false, default: 0.0
      t.decimal :voltage, precision: 5, scale: 3, null: false, default: 0.0
      t.decimal :weight, precision: 5, scale: 3, null: false, default: 0.0
      t.decimal :width, precision: 5, scale: 3, null: false, default: 0.0
      t.decimal :height, precision: 5, scale: 3, null: false, default: 0.0

      t.timestamps
    end
  end
end
