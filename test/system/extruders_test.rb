require "application_system_test_case"

class ExtrudersTest < ApplicationSystemTestCase
  setup do
    @extruder = extruders(:one)
  end

  test "visiting the index" do
    visit extruders_url
    assert_selector "h1", text: "Extruders"
  end

  test "should create extruder" do
    visit extruders_url
    click_on "New extruder"

    fill_in "Filament diameter", with: @extruder.filament_diameter
    fill_in "Full steps per rotation", with: @extruder.full_steps_per_rotation
    fill_in "Gear ratio", with: @extruder.gear_ratio
    fill_in "Microsteps", with: @extruder.microsteps
    fill_in "Name", with: @extruder.name
    fill_in "Nozzle diameter", with: @extruder.nozzle_diameter
    fill_in "Rotation distance", with: @extruder.rotation_distance
    click_on "Create Extruder"

    assert_text "Extruder was successfully created"
    click_on "Back"
  end

  test "should update Extruder" do
    visit extruder_url(@extruder)
    click_on "Edit this extruder", match: :first

    fill_in "Filament diameter", with: @extruder.filament_diameter
    fill_in "Full steps per rotation", with: @extruder.full_steps_per_rotation
    fill_in "Gear ratio", with: @extruder.gear_ratio
    fill_in "Microsteps", with: @extruder.microsteps
    fill_in "Name", with: @extruder.name
    fill_in "Nozzle diameter", with: @extruder.nozzle_diameter
    fill_in "Rotation distance", with: @extruder.rotation_distance
    click_on "Update Extruder"

    assert_text "Extruder was successfully updated"
    click_on "Back"
  end

  test "should destroy Extruder" do
    visit extruder_url(@extruder)
    click_on "Destroy this extruder", match: :first

    assert_text "Extruder was successfully destroyed"
  end
end
