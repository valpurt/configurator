require "application_system_test_case"

class McusTest < ApplicationSystemTestCase
  setup do
    @mcu = mcus(:one)
  end

  test "visiting the index" do
    visit mcus_url
    assert_selector "h1", text: "Mcus"
  end

  test "should create mcu" do
    visit mcus_url
    click_on "New mcu"

    click_on "Create Mcu"

    assert_text "Mcu was successfully created"
    click_on "Back"
  end

  test "should update Mcu" do
    visit mcu_url(@mcu)
    click_on "Edit this mcu", match: :first

    click_on "Update Mcu"

    assert_text "Mcu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mcu" do
    visit mcu_url(@mcu)
    click_on "Destroy this mcu", match: :first

    assert_text "Mcu was successfully destroyed"
  end
end
