require 'test_helper'

class SwDevHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sw_dev_has_student = sw_dev_has_students(:one)
  end

  test "should get index" do
    get sw_dev_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_sw_dev_has_student_url
    assert_response :success
  end

  test "should create sw_dev_has_student" do
    assert_difference('SwDevHasStudent.count') do
      post sw_dev_has_students_url, params: { sw_dev_has_student: { status: @sw_dev_has_student.status, student_id: @sw_dev_has_student.student_id, sw_dev_id: @sw_dev_has_student.sw_dev_id } }
    end

    assert_redirected_to sw_dev_has_student_url(SwDevHasStudent.last)
  end

  test "should show sw_dev_has_student" do
    get sw_dev_has_student_url(@sw_dev_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_sw_dev_has_student_url(@sw_dev_has_student)
    assert_response :success
  end

  test "should update sw_dev_has_student" do
    patch sw_dev_has_student_url(@sw_dev_has_student), params: { sw_dev_has_student: { status: @sw_dev_has_student.status, student_id: @sw_dev_has_student.student_id, sw_dev_id: @sw_dev_has_student.sw_dev_id } }
    assert_redirected_to sw_dev_has_student_url(@sw_dev_has_student)
  end

  test "should destroy sw_dev_has_student" do
    assert_difference('SwDevHasStudent.count', -1) do
      delete sw_dev_has_student_url(@sw_dev_has_student)
    end

    assert_redirected_to sw_dev_has_students_url
  end
end
