require 'test_helper'

class LiberationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liberation = liberations(:one)
  end

  test "should get index" do
    get liberations_url
    assert_response :success
  end

  test "should get new" do
    get new_liberation_url
    assert_response :success
  end

  test "should create liberation" do
    assert_difference('Liberation.count') do
      post liberations_url, params: { liberation: { cvu: @liberation.cvu, encuesta: @liberation.encuesta, photo: @liberation.photo, student_id: @liberation.student_id } }
    end

    assert_redirected_to liberation_url(Liberation.last)
  end

  test "should show liberation" do
    get liberation_url(@liberation)
    assert_response :success
  end

  test "should get edit" do
    get edit_liberation_url(@liberation)
    assert_response :success
  end

  test "should update liberation" do
    patch liberation_url(@liberation), params: { liberation: { cvu: @liberation.cvu, encuesta: @liberation.encuesta, photo: @liberation.photo, student_id: @liberation.student_id } }
    assert_redirected_to liberation_url(@liberation)
  end

  test "should destroy liberation" do
    assert_difference('Liberation.count', -1) do
      delete liberation_url(@liberation)
    end

    assert_redirected_to liberations_url
  end
end
