require 'test_helper'

class EventAssistanceHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_assistance_has_teacher = event_assistance_has_teachers(:one)
  end

  test "should get index" do
    get event_assistance_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_event_assistance_has_teacher_url
    assert_response :success
  end

  test "should create event_assistance_has_teacher" do
    assert_difference('EventAssistanceHasTeacher.count') do
      post event_assistance_has_teachers_url, params: { event_assistance_has_teacher: { event_assistance_id: @event_assistance_has_teacher.event_assistance_id, status: @event_assistance_has_teacher.status, teacher_id: @event_assistance_has_teacher.teacher_id } }
    end

    assert_redirected_to event_assistance_has_teacher_url(EventAssistanceHasTeacher.last)
  end

  test "should show event_assistance_has_teacher" do
    get event_assistance_has_teacher_url(@event_assistance_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_assistance_has_teacher_url(@event_assistance_has_teacher)
    assert_response :success
  end

  test "should update event_assistance_has_teacher" do
    patch event_assistance_has_teacher_url(@event_assistance_has_teacher), params: { event_assistance_has_teacher: { event_assistance_id: @event_assistance_has_teacher.event_assistance_id, status: @event_assistance_has_teacher.status, teacher_id: @event_assistance_has_teacher.teacher_id } }
    assert_redirected_to event_assistance_has_teacher_url(@event_assistance_has_teacher)
  end

  test "should destroy event_assistance_has_teacher" do
    assert_difference('EventAssistanceHasTeacher.count', -1) do
      delete event_assistance_has_teacher_url(@event_assistance_has_teacher)
    end

    assert_redirected_to event_assistance_has_teachers_url
  end
end
