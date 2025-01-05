require "application_system_test_case"

class TemperatureSensorsTest < ApplicationSystemTestCase
  setup do
    @temperature_sensor = temperature_sensors(:one)
  end

  test "visiting the index" do
    visit temperature_sensors_url
    assert_selector "h1", text: "Temperature sensors"
  end

  test "should create temperature sensor" do
    visit temperature_sensors_url
    click_on "New temperature sensor"

    click_on "Create Temperature sensor"

    assert_text "Temperature sensor was successfully created"
    click_on "Back"
  end

  test "should update Temperature sensor" do
    visit temperature_sensor_url(@temperature_sensor)
    click_on "Edit this temperature sensor", match: :first

    click_on "Update Temperature sensor"

    assert_text "Temperature sensor was successfully updated"
    click_on "Back"
  end

  test "should destroy Temperature sensor" do
    visit temperature_sensor_url(@temperature_sensor)
    click_on "Destroy this temperature sensor", match: :first

    assert_text "Temperature sensor was successfully destroyed"
  end
end
