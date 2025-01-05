require "application_system_test_case"

class SteppersTest < ApplicationSystemTestCase
  setup do
    @stepper = steppers(:one)
  end

  test "visiting the index" do
    visit steppers_url
    assert_selector "h1", text: "Steppers"
  end

  test "should create stepper" do
    visit steppers_url
    click_on "New stepper"

    click_on "Create Stepper"

    assert_text "Stepper was successfully created"
    click_on "Back"
  end

  test "should update Stepper" do
    visit stepper_url(@stepper)
    click_on "Edit this stepper", match: :first

    click_on "Update Stepper"

    assert_text "Stepper was successfully updated"
    click_on "Back"
  end

  test "should destroy Stepper" do
    visit stepper_url(@stepper)
    click_on "Destroy this stepper", match: :first

    assert_text "Stepper was successfully destroyed"
  end
end
