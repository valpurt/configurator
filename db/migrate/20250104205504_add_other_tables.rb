# frozen_string_literal: true

class AddOtherTables < ActiveRecord::Migration[7.0]
  def change
    create_table :stepper_drivers do |t|
      t.references :stepper, null: false, foreign_key: true
      t.string :type, null: false
      t.string :uart_pin
      t.boolean :interpolate, default: false
      t.float :run_current
      t.float :hold_current
      t.float :sense_resistor
      t.integer :stealthchop_threshold
      t.string :decay_mode
      t.integer :microsteps
      t.integer :stallguard_threshold

      t.timestamps
    end

    create_table :mcu do |t|
      t.string :name, null: false
      t.string :serial
      t.integer :baud
      t.string :canbus_uuid
      t.string :canbus_interface
      t.string :restart_method

      t.timestamps
    end

    create_table :steppers do |t|
      t.string :axis
      t.string :step_pin
      t.string :dir_pin
      t.string :enable_pin
      t.float :rotation_distance
      t.integer :microsteps
      t.integer :full_steps_per_rotation
      t.string :endstop_pin
      t.float :position_min
      t.float :position_max
      t.float :homing_speed
      t.float :second_homing_speed
      t.float :homing_retract_dist
      t.boolean :homing_positive_dir

      t.references :printer, foreign_key: true

      t.timestamps
    end

    change_table :extruders do |t|
      t.string :heater_pin
      t.string :sensor_type
      t.string :sensor_pin
      t.string :control
      t.float :pid_kp
      t.float :pid_ki
      t.float :pid_kd
      t.float :min_temp
      t.float :max_temp
    end

    create_table :probes do |t|
      t.string :pin
      t.float :z_offset
      t.integer :samples
      t.float :sample_retract
      t.float :speed

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :filament_sensors do |t|
      t.string :pin
      t.boolean :detection, default: true
      t.float :runout_distance
      t.float :insert_distance

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :temperature_sensors do |t|
      t.string :sensor_pin
      t.string :sensor_type
      t.float :min_temp
      t.float :max_temp

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :heater_fans do |t|
      t.string :pin
      t.float :max_temp
      t.float :shutdown_temp

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :controller_fans do |t|
      t.string :pin
      t.float :fan_speed

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :gcode_macros do |t|
      t.string :name
      t.text :gcode

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :input_shapers do |t|
      t.string :shaper_type
      t.float :frequency

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :screws_tilt_adjusts do |t|
      t.float :screw_x
      t.float :screw_y
      t.float :z_adjust

      t.references :printer, foreign_key: true

      t.timestamps
    end

    create_table :z_tilts do |t|
      t.text :points
      t.float :speed

      t.references :printer, foreign_key: true

      t.timestamps
    end

    add_foreign_key :printers, :extruders
    add_foreign_key :printers, :kinematics, column: :kinematic_id
  end
end
