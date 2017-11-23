require 'test_helper'

class StudentHasSemestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_has_semester = student_has_semesters(:one)
  end

  test "should get index" do
    get student_has_semesters_url
    assert_response :success
  end

  test "should get new" do
    get new_student_has_semester_url
    assert_response :success
  end

  test "should create student_has_semester" do
    assert_difference('StudentHasSemester.count') do
      post student_has_semesters_url, params: { student_has_semester: { concluido: @student_has_semester.concluido, semester_id: @student_has_semester.semester_id, student_id: @student_has_semester.student_id } }
    end

    assert_redirected_to student_has_semester_url(StudentHasSemester.last)
  end

  test "should show student_has_semester" do
    get student_has_semester_url(@student_has_semester)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_has_semester_url(@student_has_semester)
    assert_response :success
  end

  test "should update student_has_semester" do
    patch student_has_semester_url(@student_has_semester), params: { student_has_semester: { concluido: @student_has_semester.concluido, semester_id: @student_has_semester.semester_id, student_id: @student_has_semester.student_id } }
    assert_redirected_to student_has_semester_url(@student_has_semester)
  end

  test "should destroy student_has_semester" do
    assert_difference('StudentHasSemester.count', -1) do
      delete student_has_semester_url(@student_has_semester)
    end

    assert_redirected_to student_has_semesters_url
  end
end
