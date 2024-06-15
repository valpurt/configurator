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

ActiveRecord::Schema[7.1].define(version: 2024_06_15_172259) do
  create_table "extruders", force: :cascade do |t|
    t.string "name"
    t.float "rotation_distance"
    t.string "gear_ratio"
    t.integer "microsteps"
    t.integer "full_steps_per_rotation"
    t.float "filament_diameter"
    t.float "nozzle_diameter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinematics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "printers", force: :cascade do |t|
    t.string "name"
    t.integer "print_size_x"
    t.integer "print_size_y"
    t.integer "print_size_z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
