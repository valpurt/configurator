class CreatePrinters < ActiveRecord::Migration[7.1]
  def change
    create_table :printers do |t|
      t.string :name
      t.integer :print_size_x
      t.integer :print_size_y
      t.integer :print_size_z

      t.timestamps
    end
  end
end
