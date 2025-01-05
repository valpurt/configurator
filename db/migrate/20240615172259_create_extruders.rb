# frozen_string_literal: true

class CreateExtruders < ActiveRecord::Migration[7.1]
  def change
    create_table :extruders do |t|
      t.string :name
      t.float :rotation_distance
      t.string :gear_ratio
      t.integer :microsteps
      t.integer :full_steps_per_rotation
      t.float :filament_diameter
      t.float :nozzle_diameter

      t.timestamps
    end
  end
end
