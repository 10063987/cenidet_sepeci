require 'test_helper'

class DistinctiveSignHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distinctive_sign_has_student = distinctive_sign_has_students(:one)
  end

  test "should get index" do
    get distinctive_sign_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_distinctive_sign_has_student_url
    assert_response :success
  end

  test "should create distinctive_sign_has_student" do
    assert_difference('DistinctiveSignHasStudent.count') do
      post distinctive_sign_has_students_url, params: { distinctive_sign_has_student: { distinctive_sign_id: @distinctive_sign_has_student.distinctive_sign_id, status: @distinctive_sign_has_student.status, student_id: @distinctive_sign_has_student.student_id } }
    end

    assert_redirected_to distinctive_sign_has_student_url(DistinctiveSignHasStudent.last)
  end

  test "should show distinctive_sign_has_student" do
    get distinctive_sign_has_student_url(@distinctive_sign_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_distinctive_sign_has_student_url(@distinctive_sign_has_student)
    assert_response :success
  end

  test "should update distinctive_sign_has_student" do
    patch distinctive_sign_has_student_url(@distinctive_sign_has_student), params: { distinctive_sign_has_student: { distinctive_sign_id: @distinctive_sign_has_student.distinctive_sign_id, status: @distinctive_sign_has_student.status, student_id: @distinctive_sign_has_student.student_id } }
    assert_redirected_to distinctive_sign_has_student_url(@distinctive_sign_has_student)
  end

  test "should destroy distinctive_sign_has_student" do
    assert_difference('DistinctiveSignHasStudent.count', -1) do
      delete distinctive_sign_has_student_url(@distinctive_sign_has_student)
    end

    assert_redirected_to distinctive_sign_has_students_url
  end
end
