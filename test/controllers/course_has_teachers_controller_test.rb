require 'test_helper'

class CourseHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_has_teacher = course_has_teachers(:one)
  end

  test "should get index" do
    get course_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_course_has_teacher_url
    assert_response :success
  end

  test "should create course_has_teacher" do
    assert_difference('CourseHasTeacher.count') do
      post course_has_teachers_url, params: { course_has_teacher: { course_id: @course_has_teacher.course_id, status: @course_has_teacher.status, teacher_id: @course_has_teacher.teacher_id } }
    end

    assert_redirected_to course_has_teacher_url(CourseHasTeacher.last)
  end

  test "should show course_has_teacher" do
    get course_has_teacher_url(@course_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_has_teacher_url(@course_has_teacher)
    assert_response :success
  end

  test "should update course_has_teacher" do
    patch course_has_teacher_url(@course_has_teacher), params: { course_has_teacher: { course_id: @course_has_teacher.course_id, status: @course_has_teacher.status, teacher_id: @course_has_teacher.teacher_id } }
    assert_redirected_to course_has_teacher_url(@course_has_teacher)
  end

  test "should destroy course_has_teacher" do
    assert_difference('CourseHasTeacher.count', -1) do
      delete course_has_teacher_url(@course_has_teacher)
    end

    assert_redirected_to course_has_teachers_url
  end
end
