require 'test_helper'

class CourseHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_has_student = course_has_students(:one)
  end

  test "should get index" do
    get course_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_course_has_student_url
    assert_response :success
  end

  test "should create course_has_student" do
    assert_difference('CourseHasStudent.count') do
      post course_has_students_url, params: { course_has_student: { course_id: @course_has_student.course_id, status: @course_has_student.status, student_id: @course_has_student.student_id } }
    end

    assert_redirected_to course_has_student_url(CourseHasStudent.last)
  end

  test "should show course_has_student" do
    get course_has_student_url(@course_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_has_student_url(@course_has_student)
    assert_response :success
  end

  test "should update course_has_student" do
    patch course_has_student_url(@course_has_student), params: { course_has_student: { course_id: @course_has_student.course_id, status: @course_has_student.status, student_id: @course_has_student.student_id } }
    assert_redirected_to course_has_student_url(@course_has_student)
  end

  test "should destroy course_has_student" do
    assert_difference('CourseHasStudent.count', -1) do
      delete course_has_student_url(@course_has_student)
    end

    assert_redirected_to course_has_students_url
  end
end
