# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_250_104_212_705) do
  create_table 'axes', force: :cascade do |t|
    t.integer 'printer_id', null: false
    t.string 'name', null: false
    t.string 'type', null: false
    t.float 'length'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_axes_on_printer_id'
  end

  create_table 'controller_fans', force: :cascade do |t|
    t.string 'pin'
    t.float 'fan_speed'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_controller_fans_on_printer_id'
  end

  create_table 'extruders', force: :cascade do |t|
    t.string 'name'
    t.float 'rotation_distance'
    t.string 'gear_ratio'
    t.integer 'microsteps'
    t.integer 'full_steps_per_rotation'
    t.float 'filament_diameter'
    t.float 'nozzle_diameter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'heater_pin'
    t.string 'sensor_type'
    t.string 'sensor_pin'
    t.string 'control'
    t.float 'pid_kp'
    t.float 'pid_ki'
    t.float 'pid_kd'
    t.float 'min_temp'
    t.float 'max_temp'
  end

  create_table 'filament_sensors', force: :cascade do |t|
    t.string 'pin'
    t.boolean 'detection', default: true
    t.float 'runout_distance'
    t.float 'insert_distance'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_filament_sensors_on_printer_id'
  end

  create_table 'gcode_macros', force: :cascade do |t|
    t.string 'name'
    t.text 'gcode'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_gcode_macros_on_printer_id'
  end

  create_table 'heater_fans', force: :cascade do |t|
    t.string 'pin'
    t.float 'max_temp'
    t.float 'shutdown_temp'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_heater_fans_on_printer_id'
  end

  create_table 'input_shapers', force: :cascade do |t|
    t.string 'shaper_type'
    t.float 'frequency'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_input_shapers_on_printer_id'
  end

  create_table 'kinematics', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'mcu', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'serial'
    t.integer 'baud'
    t.string 'canbus_uuid'
    t.string 'canbus_interface'
    t.string 'restart_method'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'printers', force: :cascade do |t|
    t.string 'name'
    t.integer 'print_size_x'
    t.integer 'print_size_y'
    t.integer 'print_size_z'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'extruder_id'
    t.integer 'kinematic_id'
    t.index ['extruder_id'], name: 'index_printers_on_extruder_id'
    t.index ['kinematic_id'], name: 'index_printers_on_kinematics_id'
  end

  create_table 'probes', force: :cascade do |t|
    t.string 'pin'
    t.float 'z_offset'
    t.integer 'samples'
    t.float 'sample_retract'
    t.float 'speed'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_probes_on_printer_id'
  end

  create_table 'screws_tilt_adjusts', force: :cascade do |t|
    t.float 'screw_x'
    t.float 'screw_y'
    t.float 'z_adjust'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_screws_tilt_adjusts_on_printer_id'
  end

  create_table 'settings', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'stepper_drivers', force: :cascade do |t|
    t.integer 'stepper_id', null: false
    t.string 'type', null: false
    t.string 'uart_pin'
    t.boolean 'interpolate', default: false
    t.float 'run_current'
    t.float 'hold_current'
    t.float 'sense_resistor'
    t.integer 'stealthchop_threshold'
    t.string 'decay_mode'
    t.integer 'microsteps'
    t.integer 'stallguard_threshold'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['stepper_id'], name: 'index_stepper_drivers_on_stepper_id'
  end

  create_table 'steppers', force: :cascade do |t|
    t.string 'axis'
    t.string 'step_pin'
    t.string 'dir_pin'
    t.string 'enable_pin'
    t.float 'rotation_distance'
    t.integer 'microsteps'
    t.integer 'full_steps_per_rotation'
    t.string 'endstop_pin'
    t.float 'position_min'
    t.float 'position_max'
    t.float 'homing_speed'
    t.float 'second_homing_speed'
    t.float 'homing_retract_dist'
    t.boolean 'homing_positive_dir'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'axis_id', null: false
    t.index ['axis_id'], name: 'index_steppers_on_axis_id'
    t.index ['printer_id'], name: 'index_steppers_on_printer_id'
  end

  create_table 'temperature_sensors', force: :cascade do |t|
    t.string 'sensor_pin'
    t.string 'sensor_type'
    t.float 'min_temp'
    t.float 'max_temp'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_temperature_sensors_on_printer_id'
  end

  create_table 'z_tilts', force: :cascade do |t|
    t.text 'points'
    t.float 'speed'
    t.integer 'printer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['printer_id'], name: 'index_z_tilts_on_printer_id'
  end

  add_foreign_key 'axes', 'printers'
  add_foreign_key 'controller_fans', 'printers'
  add_foreign_key 'filament_sensors', 'printers'
  add_foreign_key 'gcode_macros', 'printers'
  add_foreign_key 'heater_fans', 'printers'
  add_foreign_key 'input_shapers', 'printers'
  add_foreign_key 'printers', 'extruders'
  add_foreign_key 'printers', 'extruders'
  add_foreign_key 'printers', 'kinematics'
  add_foreign_key 'printers', 'kinematics'
  add_foreign_key 'probes', 'printers'
  add_foreign_key 'screws_tilt_adjusts', 'printers'
  add_foreign_key 'stepper_drivers', 'steppers'
  add_foreign_key 'steppers', 'axes'
  add_foreign_key 'steppers', 'printers'
  add_foreign_key 'temperature_sensors', 'printers'
  add_foreign_key 'z_tilts', 'printers'
end
