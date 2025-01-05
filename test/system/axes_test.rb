require "application_system_test_case"

class AxesTest < ApplicationSystemTestCase
  setup do
    @axis = axes(:one)
  end

  test "visiting the index" do
    visit axes_url
    assert_selector "h1", text: "Axes"
  end

  test "should create axis" do
    visit axes_url
    click_on "New axis"

    click_on "Create Axis"

    assert_text "Axis was successfully created"
    click_on "Back"
  end

  test "should update Axis" do
    visit axis_url(@axis)
    click_on "Edit this axis", match: :first

    click_on "Update Axis"

    assert_text "Axis was successfully updated"
    click_on "Back"
  end

  test "should destroy Axis" do
    visit axis_url(@axis)
    click_on "Destroy this axis", match: :first

    assert_text "Axis was successfully destroyed"
  end
end
