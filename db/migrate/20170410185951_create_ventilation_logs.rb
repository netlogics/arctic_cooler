class CreateVentilationLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :ventilation_logs do |t|
      t.integer :fan_id
      t.integer :grid_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :speed

      t.timestamps
    end
  end
end
