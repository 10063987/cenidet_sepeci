require 'test_helper'

class InventionHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invention_has_student = invention_has_students(:one)
  end

  test "should get index" do
    get invention_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_invention_has_student_url
    assert_response :success
  end

  test "should create invention_has_student" do
    assert_difference('InventionHasStudent.count') do
      post invention_has_students_url, params: { invention_has_student: { invention_id: @invention_has_student.invention_id, status: @invention_has_student.status, student_id: @invention_has_student.student_id } }
    end

    assert_redirected_to invention_has_student_url(InventionHasStudent.last)
  end

  test "should show invention_has_student" do
    get invention_has_student_url(@invention_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_invention_has_student_url(@invention_has_student)
    assert_response :success
  end

  test "should update invention_has_student" do
    patch invention_has_student_url(@invention_has_student), params: { invention_has_student: { invention_id: @invention_has_student.invention_id, status: @invention_has_student.status, student_id: @invention_has_student.student_id } }
    assert_redirected_to invention_has_student_url(@invention_has_student)
  end

  test "should destroy invention_has_student" do
    assert_difference('InventionHasStudent.count', -1) do
      delete invention_has_student_url(@invention_has_student)
    end

    assert_redirected_to invention_has_students_url
  end
end
