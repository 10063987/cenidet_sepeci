require 'test_helper'

class StayHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stay_has_student = stay_has_students(:one)
  end

  test "should get index" do
    get stay_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_stay_has_student_url
    assert_response :success
  end

  test "should create stay_has_student" do
    assert_difference('StayHasStudent.count') do
      post stay_has_students_url, params: { stay_has_student: { status: @stay_has_student.status, stay_id: @stay_has_student.stay_id, student_id: @stay_has_student.student_id } }
    end

    assert_redirected_to stay_has_student_url(StayHasStudent.last)
  end

  test "should show stay_has_student" do
    get stay_has_student_url(@stay_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_stay_has_student_url(@stay_has_student)
    assert_response :success
  end

  test "should update stay_has_student" do
    patch stay_has_student_url(@stay_has_student), params: { stay_has_student: { status: @stay_has_student.status, stay_id: @stay_has_student.stay_id, student_id: @stay_has_student.student_id } }
    assert_redirected_to stay_has_student_url(@stay_has_student)
  end

  test "should destroy stay_has_student" do
    assert_difference('StayHasStudent.count', -1) do
      delete stay_has_student_url(@stay_has_student)
    end

    assert_redirected_to stay_has_students_url
  end
end
