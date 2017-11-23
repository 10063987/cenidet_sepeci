require 'test_helper'

class TechDevTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_dev_type = tech_dev_types(:one)
  end

  test "should get index" do
    get tech_dev_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_dev_type_url
    assert_response :success
  end

  test "should create tech_dev_type" do
    assert_difference('TechDevType.count') do
      post tech_dev_types_url, params: { tech_dev_type: { type: @tech_dev_type.type } }
    end

    assert_redirected_to tech_dev_type_url(TechDevType.last)
  end

  test "should show tech_dev_type" do
    get tech_dev_type_url(@tech_dev_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_dev_type_url(@tech_dev_type)
    assert_response :success
  end

  test "should update tech_dev_type" do
    patch tech_dev_type_url(@tech_dev_type), params: { tech_dev_type: { type: @tech_dev_type.type } }
    assert_redirected_to tech_dev_type_url(@tech_dev_type)
  end

  test "should destroy tech_dev_type" do
    assert_difference('TechDevType.count', -1) do
      delete tech_dev_type_url(@tech_dev_type)
    end

    assert_redirected_to tech_dev_types_url
  end
end
