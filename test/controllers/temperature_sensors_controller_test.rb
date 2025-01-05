require "test_helper"

class TemperatureSensorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temperature_sensor = temperature_sensors(:one)
  end

  test "should get index" do
    get temperature_sensors_url
    assert_response :success
  end

  test "should get new" do
    get new_temperature_sensor_url
    assert_response :success
  end

  test "should create temperature_sensor" do
    assert_difference("TemperatureSensor.count") do
      post temperature_sensors_url, params: { temperature_sensor: {  } }
    end

    assert_redirected_to temperature_sensor_url(TemperatureSensor.last)
  end

  test "should show temperature_sensor" do
    get temperature_sensor_url(@temperature_sensor)
    assert_response :success
  end

  test "should get edit" do
    get edit_temperature_sensor_url(@temperature_sensor)
    assert_response :success
  end

  test "should update temperature_sensor" do
    patch temperature_sensor_url(@temperature_sensor), params: { temperature_sensor: {  } }
    assert_redirected_to temperature_sensor_url(@temperature_sensor)
  end

  test "should destroy temperature_sensor" do
    assert_difference("TemperatureSensor.count", -1) do
      delete temperature_sensor_url(@temperature_sensor)
    end

    assert_redirected_to temperature_sensors_url
  end
end
