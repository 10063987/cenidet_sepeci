require 'test_helper'

class SwDevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sw_dev = sw_devs(:one)
  end

  test "should get index" do
    get sw_devs_url
    assert_response :success
  end

  test "should get new" do
    get new_sw_dev_url
    assert_response :success
  end

  test "should create sw_dev" do
    assert_difference('SwDev.count') do
      post sw_devs_url, params: { sw_dev: { beneficiary: @sw_dev.beneficiary, copyright: @sw_dev.copyright, evidence: @sw_dev.evidence, message_id: @sw_dev.message_id, objctive: @sw_dev.objctive, sw_dev_title: @sw_dev.sw_dev_title, sw_dev_type_id: @sw_dev.sw_dev_type_id } }
    end

    assert_redirected_to sw_dev_url(SwDev.last)
  end

  test "should show sw_dev" do
    get sw_dev_url(@sw_dev)
    assert_response :success
  end

  test "should get edit" do
    get edit_sw_dev_url(@sw_dev)
    assert_response :success
  end

  test "should update sw_dev" do
    patch sw_dev_url(@sw_dev), params: { sw_dev: { beneficiary: @sw_dev.beneficiary, copyright: @sw_dev.copyright, evidence: @sw_dev.evidence, message_id: @sw_dev.message_id, objctive: @sw_dev.objctive, sw_dev_title: @sw_dev.sw_dev_title, sw_dev_type_id: @sw_dev.sw_dev_type_id } }
    assert_redirected_to sw_dev_url(@sw_dev)
  end

  test "should destroy sw_dev" do
    assert_difference('SwDev.count', -1) do
      delete sw_dev_url(@sw_dev)
    end

    assert_redirected_to sw_devs_url
  end
end
