require 'test_helper'

class CongressMemoryHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congress_memory_has_teacher = congress_memory_has_teachers(:one)
  end

  test "should get index" do
    get congress_memory_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_congress_memory_has_teacher_url
    assert_response :success
  end

  test "should create congress_memory_has_teacher" do
    assert_difference('CongressMemoryHasTeacher.count') do
      post congress_memory_has_teachers_url, params: { congress_memory_has_teacher: { congress_memory_id: @congress_memory_has_teacher.congress_memory_id, status: @congress_memory_has_teacher.status, teacher_id: @congress_memory_has_teacher.teacher_id } }
    end

    assert_redirected_to congress_memory_has_teacher_url(CongressMemoryHasTeacher.last)
  end

  test "should show congress_memory_has_teacher" do
    get congress_memory_has_teacher_url(@congress_memory_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_congress_memory_has_teacher_url(@congress_memory_has_teacher)
    assert_response :success
  end

  test "should update congress_memory_has_teacher" do
    patch congress_memory_has_teacher_url(@congress_memory_has_teacher), params: { congress_memory_has_teacher: { congress_memory_id: @congress_memory_has_teacher.congress_memory_id, status: @congress_memory_has_teacher.status, teacher_id: @congress_memory_has_teacher.teacher_id } }
    assert_redirected_to congress_memory_has_teacher_url(@congress_memory_has_teacher)
  end

  test "should destroy congress_memory_has_teacher" do
    assert_difference('CongressMemoryHasTeacher.count', -1) do
      delete congress_memory_has_teacher_url(@congress_memory_has_teacher)
    end

    assert_redirected_to congress_memory_has_teachers_url
  end
end
