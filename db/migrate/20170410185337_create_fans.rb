class CreateFans < ActiveRecord::Migration[5.0]
  def change
    create_table :fans do |t|
      t.string :state, null: false, default: 'off'

      t.timestamps
    end

    add_index :fans, :state
  end
end
