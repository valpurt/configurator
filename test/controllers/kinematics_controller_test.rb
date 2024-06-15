require "test_helper"

class KinematicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kinematic = kinematics(:one)
  end

  test "should get index" do
    get kinematics_url
    assert_response :success
  end

  test "should get new" do
    get new_kinematic_url
    assert_response :success
  end

  test "should create kinematic" do
    assert_difference("Kinematic.count") do
      post kinematics_url, params: { kinematic: { name: @kinematic.name } }
    end

    assert_redirected_to kinematic_url(Kinematic.last)
  end

  test "should show kinematic" do
    get kinematic_url(@kinematic)
    assert_response :success
  end

  test "should get edit" do
    get edit_kinematic_url(@kinematic)
    assert_response :success
  end

  test "should update kinematic" do
    patch kinematic_url(@kinematic), params: { kinematic: { name: @kinematic.name } }
    assert_redirected_to kinematic_url(@kinematic)
  end

  test "should destroy kinematic" do
    assert_difference("Kinematic.count", -1) do
      delete kinematic_url(@kinematic)
    end

    assert_redirected_to kinematics_url
  end
end
