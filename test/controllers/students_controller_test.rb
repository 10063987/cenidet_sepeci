require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { admission_date: @student.admission_date, email: @student.email, exit_date: @student.exit_date, grade: @student.grade, last_name: @student.last_name, mlast_name: @student.mlast_name, name: @student.name, phone: @student.phone, research_line_id: @student.research_line_id, user_id: @student.user_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { admission_date: @student.admission_date, email: @student.email, exit_date: @student.exit_date, grade: @student.grade, last_name: @student.last_name, mlast_name: @student.mlast_name, name: @student.name, phone: @student.phone, research_line_id: @student.research_line_id, user_id: @student.user_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
