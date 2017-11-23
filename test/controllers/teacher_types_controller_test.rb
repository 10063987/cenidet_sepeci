require 'test_helper'

class TeacherTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_type = teacher_types(:one)
  end

  test "should get index" do
    get teacher_types_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_type_url
    assert_response :success
  end

  test "should create teacher_type" do
    assert_difference('TeacherType.count') do
      post teacher_types_url, params: { teacher_type: { type: @teacher_type.type } }
    end

    assert_redirected_to teacher_type_url(TeacherType.last)
  end

  test "should show teacher_type" do
    get teacher_type_url(@teacher_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_type_url(@teacher_type)
    assert_response :success
  end

  test "should update teacher_type" do
    patch teacher_type_url(@teacher_type), params: { teacher_type: { type: @teacher_type.type } }
    assert_redirected_to teacher_type_url(@teacher_type)
  end

  test "should destroy teacher_type" do
    assert_difference('TeacherType.count', -1) do
      delete teacher_type_url(@teacher_type)
    end

    assert_redirected_to teacher_types_url
  end
end
