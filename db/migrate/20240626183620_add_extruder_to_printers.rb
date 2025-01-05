# frozen_string_literal: true

class AddExtruderToPrinters < ActiveRecord::Migration[7.1]
  def change
    add_reference :printers, :extruder, foreign_key: true
  end
end
