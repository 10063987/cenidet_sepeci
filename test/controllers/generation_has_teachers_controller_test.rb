require 'test_helper'

class GenerationHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generation_has_teacher = generation_has_teachers(:one)
  end

  test "should get index" do
    get generation_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_generation_has_teacher_url
    assert_response :success
  end

  test "should create generation_has_teacher" do
    assert_difference('GenerationHasTeacher.count') do
      post generation_has_teachers_url, params: { generation_has_teacher: { generation_id: @generation_has_teacher.generation_id, status: @generation_has_teacher.status, teacher_id: @generation_has_teacher.teacher_id } }
    end

    assert_redirected_to generation_has_teacher_url(GenerationHasTeacher.last)
  end

  test "should show generation_has_teacher" do
    get generation_has_teacher_url(@generation_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_generation_has_teacher_url(@generation_has_teacher)
    assert_response :success
  end

  test "should update generation_has_teacher" do
    patch generation_has_teacher_url(@generation_has_teacher), params: { generation_has_teacher: { generation_id: @generation_has_teacher.generation_id, status: @generation_has_teacher.status, teacher_id: @generation_has_teacher.teacher_id } }
    assert_redirected_to generation_has_teacher_url(@generation_has_teacher)
  end

  test "should destroy generation_has_teacher" do
    assert_difference('GenerationHasTeacher.count', -1) do
      delete generation_has_teacher_url(@generation_has_teacher)
    end

    assert_redirected_to generation_has_teachers_url
  end
end
