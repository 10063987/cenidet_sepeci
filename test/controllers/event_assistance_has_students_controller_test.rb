require 'test_helper'

class EventAssistanceHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_assistance_has_student = event_assistance_has_students(:one)
  end

  test "should get index" do
    get event_assistance_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_event_assistance_has_student_url
    assert_response :success
  end

  test "should create event_assistance_has_student" do
    assert_difference('EventAssistanceHasStudent.count') do
      post event_assistance_has_students_url, params: { event_assistance_has_student: { event_assistance_id: @event_assistance_has_student.event_assistance_id, status: @event_assistance_has_student.status, student_id: @event_assistance_has_student.student_id } }
    end

    assert_redirected_to event_assistance_has_student_url(EventAssistanceHasStudent.last)
  end

  test "should show event_assistance_has_student" do
    get event_assistance_has_student_url(@event_assistance_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_assistance_has_student_url(@event_assistance_has_student)
    assert_response :success
  end

  test "should update event_assistance_has_student" do
    patch event_assistance_has_student_url(@event_assistance_has_student), params: { event_assistance_has_student: { event_assistance_id: @event_assistance_has_student.event_assistance_id, status: @event_assistance_has_student.status, student_id: @event_assistance_has_student.student_id } }
    assert_redirected_to event_assistance_has_student_url(@event_assistance_has_student)
  end

  test "should destroy event_assistance_has_student" do
    assert_difference('EventAssistanceHasStudent.count', -1) do
      delete event_assistance_has_student_url(@event_assistance_has_student)
    end

    assert_redirected_to event_assistance_has_students_url
  end
end
