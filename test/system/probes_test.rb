require "application_system_test_case"

class ProbesTest < ApplicationSystemTestCase
  setup do
    @probe = probes(:one)
  end

  test "visiting the index" do
    visit probes_url
    assert_selector "h1", text: "Probes"
  end

  test "should create probe" do
    visit probes_url
    click_on "New probe"

    click_on "Create Probe"

    assert_text "Probe was successfully created"
    click_on "Back"
  end

  test "should update Probe" do
    visit probe_url(@probe)
    click_on "Edit this probe", match: :first

    click_on "Update Probe"

    assert_text "Probe was successfully updated"
    click_on "Back"
  end

  test "should destroy Probe" do
    visit probe_url(@probe)
    click_on "Destroy this probe", match: :first

    assert_text "Probe was successfully destroyed"
  end
end
