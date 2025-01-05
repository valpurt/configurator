# frozen_string_literal: true

require 'test_helper'

class ExtrudersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extruder = extruders(:one)
  end

  test 'should get index' do
    get extruders_url
    assert_response :success
  end

  test 'should get new' do
    get new_extruder_url
    assert_response :success
  end

  test 'should create extruder' do
    assert_difference('Extruder.count') do
      post extruders_url,
           params: { extruder: { filament_diameter: @extruder.filament_diameter,
                                 full_steps_per_rotation: @extruder.full_steps_per_rotation, gear_ratio: @extruder.gear_ratio, microsteps: @extruder.microsteps, name: @extruder.name, nozzle_diameter: @extruder.nozzle_diameter, rotation_distance: @extruder.rotation_distance } }
    end

    assert_redirected_to extruder_url(Extruder.last)
  end

  test 'should show extruder' do
    get extruder_url(@extruder)
    assert_response :success
  end

  test 'should get edit' do
    get edit_extruder_url(@extruder)
    assert_response :success
  end

  test 'should update extruder' do
    patch extruder_url(@extruder),
          params: { extruder: { filament_diameter: @extruder.filament_diameter,
                                full_steps_per_rotation: @extruder.full_steps_per_rotation, gear_ratio: @extruder.gear_ratio, microsteps: @extruder.microsteps, name: @extruder.name, nozzle_diameter: @extruder.nozzle_diameter, rotation_distance: @extruder.rotation_distance } }
    assert_redirected_to extruder_url(@extruder)
  end

  test 'should destroy extruder' do
    assert_difference('Extruder.count', -1) do
      delete extruder_url(@extruder)
    end

    assert_redirected_to extruders_url
  end
end
