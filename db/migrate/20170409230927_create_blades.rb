class CreateBlades < ActiveRecord::Migration[5.0]
  def change
    create_table :blades do |t|
      t.integer :fan_id
      t.decimal :length, precision: 5, scale: 2, null: false, default: 0.00
      t.decimal :width,  precision: 5, scale: 2, null: false, default: 0.00
      t.string :type, null: false, default: 'straight'
    end

    add_index :blades, :type
  end
end
