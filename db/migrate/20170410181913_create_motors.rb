class CreateMotors < ActiveRecord::Migration[5.0]
  def change
    create_table :motors do |t|
      t.integer :fan_id
      t.string :state, null: false, default: 'off'
      
      t.timestamps
    end
  end
end
