require 'test_helper'

class CongressMemoryHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congress_memory_has_student = congress_memory_has_students(:one)
  end

  test "should get index" do
    get congress_memory_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_congress_memory_has_student_url
    assert_response :success
  end

  test "should create congress_memory_has_student" do
    assert_difference('CongressMemoryHasStudent.count') do
      post congress_memory_has_students_url, params: { congress_memory_has_student: { congress_memory_id: @congress_memory_has_student.congress_memory_id, status: @congress_memory_has_student.status, student_id: @congress_memory_has_student.student_id } }
    end

    assert_redirected_to congress_memory_has_student_url(CongressMemoryHasStudent.last)
  end

  test "should show congress_memory_has_student" do
    get congress_memory_has_student_url(@congress_memory_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_congress_memory_has_student_url(@congress_memory_has_student)
    assert_response :success
  end

  test "should update congress_memory_has_student" do
    patch congress_memory_has_student_url(@congress_memory_has_student), params: { congress_memory_has_student: { congress_memory_id: @congress_memory_has_student.congress_memory_id, status: @congress_memory_has_student.status, student_id: @congress_memory_has_student.student_id } }
    assert_redirected_to congress_memory_has_student_url(@congress_memory_has_student)
  end

  test "should destroy congress_memory_has_student" do
    assert_difference('CongressMemoryHasStudent.count', -1) do
      delete congress_memory_has_student_url(@congress_memory_has_student)
    end

    assert_redirected_to congress_memory_has_students_url
  end
end
