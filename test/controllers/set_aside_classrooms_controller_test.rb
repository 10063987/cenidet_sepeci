require 'test_helper'

class SetAsideClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_aside_classroom = set_aside_classrooms(:one)
  end

  test "should get index" do
    get set_aside_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_set_aside_classroom_url
    assert_response :success
  end

  test "should create set_aside_classroom" do
    assert_difference('SetAsideClassroom.count') do
      post set_aside_classrooms_url, params: { set_aside_classroom: { classroom_id: @set_aside_classroom.classroom_id, date: @set_aside_classroom.date, end_time: @set_aside_classroom.end_time, period: @set_aside_classroom.period, start_time: @set_aside_classroom.start_time, student_id: @set_aside_classroom.student_id, teacher_type_id: @set_aside_classroom.teacher_type_id, tutorial_committee_id: @set_aside_classroom.tutorial_committee_id } }
    end

    assert_redirected_to set_aside_classroom_url(SetAsideClassroom.last)
  end

  test "should show set_aside_classroom" do
    get set_aside_classroom_url(@set_aside_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_aside_classroom_url(@set_aside_classroom)
    assert_response :success
  end

  test "should update set_aside_classroom" do
    patch set_aside_classroom_url(@set_aside_classroom), params: { set_aside_classroom: { classroom_id: @set_aside_classroom.classroom_id, date: @set_aside_classroom.date, end_time: @set_aside_classroom.end_time, period: @set_aside_classroom.period, start_time: @set_aside_classroom.start_time, student_id: @set_aside_classroom.student_id, teacher_type_id: @set_aside_classroom.teacher_type_id, tutorial_committee_id: @set_aside_classroom.tutorial_committee_id } }
    assert_redirected_to set_aside_classroom_url(@set_aside_classroom)
  end

  test "should destroy set_aside_classroom" do
    assert_difference('SetAsideClassroom.count', -1) do
      delete set_aside_classroom_url(@set_aside_classroom)
    end

    assert_redirected_to set_aside_classrooms_url
  end
end
