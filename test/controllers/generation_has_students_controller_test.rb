require 'test_helper'

class GenerationHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation_has_student = generation_has_students(:one)
  end

  test "should get index" do
    get generation_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_generation_has_student_url
    assert_response :success
  end

  test "should create generation_has_student" do
    assert_difference('GenerationHasStudent.count') do
      post generation_has_students_url, params: { generation_has_student: { generation_id: @generation_has_student.generation_id, status: @generation_has_student.status, student_id: @generation_has_student.student_id } }
    end

    assert_redirected_to generation_has_student_url(GenerationHasStudent.last)
  end

  test "should show generation_has_student" do
    get generation_has_student_url(@generation_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_generation_has_student_url(@generation_has_student)
    assert_response :success
  end

  test "should update generation_has_student" do
    patch generation_has_student_url(@generation_has_student), params: { generation_has_student: { generation_id: @generation_has_student.generation_id, status: @generation_has_student.status, student_id: @generation_has_student.student_id } }
    assert_redirected_to generation_has_student_url(@generation_has_student)
  end

  test "should destroy generation_has_student" do
    assert_difference('GenerationHasStudent.count', -1) do
      delete generation_has_student_url(@generation_has_student)
    end

    assert_redirected_to generation_has_students_url
  end
end
