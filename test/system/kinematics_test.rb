# frozen_string_literal: true

require 'application_system_test_case'

class KinematicsTest < ApplicationSystemTestCase
  setup do
    @kinematic = kinematics(:one)
  end

  test 'visiting the index' do
    visit kinematics_url
    assert_selector 'h1', text: 'Kinematics'
  end

  test 'should create kinematic' do
    visit kinematics_url
    click_on 'New kinematic'

    fill_in 'Name', with: @kinematic.name
    click_on 'Create Kinematic'

    assert_text 'Kinematic was successfully created'
    click_on 'Back'
  end

  test 'should update Kinematic' do
    visit kinematic_url(@kinematic)
    click_on 'Edit this kinematic', match: :first

    fill_in 'Name', with: @kinematic.name
    click_on 'Update Kinematic'

    assert_text 'Kinematic was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Kinematic' do
    visit kinematic_url(@kinematic)
    click_on 'Destroy this kinematic', match: :first

    assert_text 'Kinematic was successfully destroyed'
  end
end
