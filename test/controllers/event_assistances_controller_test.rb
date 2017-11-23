require 'test_helper'

class EventAssistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_assistance = event_assistances(:one)
  end

  test "should get index" do
    get event_assistances_url
    assert_response :success
  end

  test "should get new" do
    get new_event_assistance_url
    assert_response :success
  end

  test "should create event_assistance" do
    assert_difference('EventAssistance.count') do
      post event_assistances_url, params: { event_assistance: { course_type: @event_assistance.course_type, end_date: @event_assistance.end_date, event_location: @event_assistance.event_location, event_type: @event_assistance.event_type, evidence: @event_assistance.evidence, message_id: @event_assistance.message_id, name: @event_assistance.name, participation_type: @event_assistance.participation_type, start_date: @event_assistance.start_date } }
    end

    assert_redirected_to event_assistance_url(EventAssistance.last)
  end

  test "should show event_assistance" do
    get event_assistance_url(@event_assistance)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_assistance_url(@event_assistance)
    assert_response :success
  end

  test "should update event_assistance" do
    patch event_assistance_url(@event_assistance), params: { event_assistance: { course_type: @event_assistance.course_type, end_date: @event_assistance.end_date, event_location: @event_assistance.event_location, event_type: @event_assistance.event_type, evidence: @event_assistance.evidence, message_id: @event_assistance.message_id, name: @event_assistance.name, participation_type: @event_assistance.participation_type, start_date: @event_assistance.start_date } }
    assert_redirected_to event_assistance_url(@event_assistance)
  end

  test "should destroy event_assistance" do
    assert_difference('EventAssistance.count', -1) do
      delete event_assistance_url(@event_assistance)
    end

    assert_redirected_to event_assistances_url
  end
end
