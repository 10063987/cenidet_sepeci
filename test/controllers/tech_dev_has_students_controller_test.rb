require 'test_helper'

class TechDevHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tech_dev_has_student = tech_dev_has_students(:one)
  end

  test "should get index" do
    get tech_dev_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_tech_dev_has_student_url
    assert_response :success
  end

  test "should create tech_dev_has_student" do
    assert_difference('TechDevHasStudent.count') do
      post tech_dev_has_students_url, params: { tech_dev_has_student: { status: @tech_dev_has_student.status, student_id: @tech_dev_has_student.student_id, tech_dev_id: @tech_dev_has_student.tech_dev_id } }
    end

    assert_redirected_to tech_dev_has_student_url(TechDevHasStudent.last)
  end

  test "should show tech_dev_has_student" do
    get tech_dev_has_student_url(@tech_dev_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_tech_dev_has_student_url(@tech_dev_has_student)
    assert_response :success
  end

  test "should update tech_dev_has_student" do
    patch tech_dev_has_student_url(@tech_dev_has_student), params: { tech_dev_has_student: { status: @tech_dev_has_student.status, student_id: @tech_dev_has_student.student_id, tech_dev_id: @tech_dev_has_student.tech_dev_id } }
    assert_redirected_to tech_dev_has_student_url(@tech_dev_has_student)
  end

  test "should destroy tech_dev_has_student" do
    assert_difference('TechDevHasStudent.count', -1) do
      delete tech_dev_has_student_url(@tech_dev_has_student)
    end

    assert_redirected_to tech_dev_has_students_url
  end
end
