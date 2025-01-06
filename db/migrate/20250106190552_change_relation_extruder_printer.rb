class ChangeRelationExtruderPrinter < ActiveRecord::Migration[7.1]
  def change
    add_column :extruders, :printer_id, :integer
    remove_column :printers, :extruder_id
  end
end
