class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :serial_number
      t.integer :order_id
      t.timestamps
    end

    add_index :widgets, :order_id
  end
end
