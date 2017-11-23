require 'test_helper'

class TechDevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_dev = tech_devs(:one)
  end

  test "should get index" do
    get tech_devs_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_dev_url
    assert_response :success
  end

  test "should create tech_dev" do
    assert_difference('TechDev.count') do
      post tech_devs_url, params: { tech_dev: { dev_name: @tech_dev.dev_name, evidence: @tech_dev.evidence, message_id: @tech_dev.message_id, objective: @tech_dev.objective, summary: @tech_dev.summary, support_document: @tech_dev.support_document, tech_dev_type: @tech_dev.tech_dev_type } }
    end

    assert_redirected_to tech_dev_url(TechDev.last)
  end

  test "should show tech_dev" do
    get tech_dev_url(@tech_dev)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_dev_url(@tech_dev)
    assert_response :success
  end

  test "should update tech_dev" do
    patch tech_dev_url(@tech_dev), params: { tech_dev: { dev_name: @tech_dev.dev_name, evidence: @tech_dev.evidence, message_id: @tech_dev.message_id, objective: @tech_dev.objective, summary: @tech_dev.summary, support_document: @tech_dev.support_document, tech_dev_type: @tech_dev.tech_dev_type } }
    assert_redirected_to tech_dev_url(@tech_dev)
  end

  test "should destroy tech_dev" do
    assert_difference('TechDev.count', -1) do
      delete tech_dev_url(@tech_dev)
    end

    assert_redirected_to tech_devs_url
  end
end
