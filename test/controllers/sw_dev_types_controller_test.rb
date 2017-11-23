require 'test_helper'

class SwDevTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sw_dev_type = sw_dev_types(:one)
  end

  test "should get index" do
    get sw_dev_types_url
    assert_response :success
  end

  test "should get new" do
    get new_sw_dev_type_url
    assert_response :success
  end

  test "should create sw_dev_type" do
    assert_difference('SwDevType.count') do
      post sw_dev_types_url, params: { sw_dev_type: { type: @sw_dev_type.type } }
    end

    assert_redirected_to sw_dev_type_url(SwDevType.last)
  end

  test "should show sw_dev_type" do
    get sw_dev_type_url(@sw_dev_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_sw_dev_type_url(@sw_dev_type)
    assert_response :success
  end

  test "should update sw_dev_type" do
    patch sw_dev_type_url(@sw_dev_type), params: { sw_dev_type: { type: @sw_dev_type.type } }
    assert_redirected_to sw_dev_type_url(@sw_dev_type)
  end

  test "should destroy sw_dev_type" do
    assert_difference('SwDevType.count', -1) do
      delete sw_dev_type_url(@sw_dev_type)
    end

    assert_redirected_to sw_dev_types_url
  end
end
