require "test_helper"

class SteppersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stepper = steppers(:one)
  end

  test "should get index" do
    get steppers_url
    assert_response :success
  end

  test "should get new" do
    get new_stepper_url
    assert_response :success
  end

  test "should create stepper" do
    assert_difference("Stepper.count") do
      post steppers_url, params: { stepper: {  } }
    end

    assert_redirected_to stepper_url(Stepper.last)
  end

  test "should show stepper" do
    get stepper_url(@stepper)
    assert_response :success
  end

  test "should get edit" do
    get edit_stepper_url(@stepper)
    assert_response :success
  end

  test "should update stepper" do
    patch stepper_url(@stepper), params: { stepper: {  } }
    assert_redirected_to stepper_url(@stepper)
  end

  test "should destroy stepper" do
    assert_difference("Stepper.count", -1) do
      delete stepper_url(@stepper)
    end

    assert_redirected_to steppers_url
  end
end
