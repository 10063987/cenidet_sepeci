require 'test_helper'

class RegistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registry = registries(:one)
  end

  test "should get index" do
    get registries_url
    assert_response :success
  end

  test "should get new" do
    get new_registry_url
    assert_response :success
  end

  test "should create registry" do
    assert_difference('Registry.count') do
      post registries_url, params: { registry: { air_ticket: @registry.air_ticket, city: @registry.city, date: @registry.date, exit_transportation: @registry.exit_transportation, gas: @registry.gas, issue_number: @registry.issue_number, land_passage: @registry.land_passage, reason: @registry.reason, registration_number: @registry.registration_number, requisition_number: @registry.requisition_number, return_transportation: @registry.return_transportation, teacher_id: @registry.teacher_id, toll_booth: @registry.toll_booth, travel_expenses: @registry.travel_expenses } }
    end

    assert_redirected_to registry_url(Registry.last)
  end

  test "should show registry" do
    get registry_url(@registry)
    assert_response :success
  end

  test "should get edit" do
    get edit_registry_url(@registry)
    assert_response :success
  end

  test "should update registry" do
    patch registry_url(@registry), params: { registry: { air_ticket: @registry.air_ticket, city: @registry.city, date: @registry.date, exit_transportation: @registry.exit_transportation, gas: @registry.gas, issue_number: @registry.issue_number, land_passage: @registry.land_passage, reason: @registry.reason, registration_number: @registry.registration_number, requisition_number: @registry.requisition_number, return_transportation: @registry.return_transportation, teacher_id: @registry.teacher_id, toll_booth: @registry.toll_booth, travel_expenses: @registry.travel_expenses } }
    assert_redirected_to registry_url(@registry)
  end

  test "should destroy registry" do
    assert_difference('Registry.count', -1) do
      delete registry_url(@registry)
    end

    assert_redirected_to registries_url
  end
end
