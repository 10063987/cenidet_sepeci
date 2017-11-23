require 'test_helper'

class StayHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stay_has_teacher = stay_has_teachers(:one)
  end

  test "should get index" do
    get stay_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_stay_has_teacher_url
    assert_response :success
  end

  test "should create stay_has_teacher" do
    assert_difference('StayHasTeacher.count') do
      post stay_has_teachers_url, params: { stay_has_teacher: { status: @stay_has_teacher.status, stay_id: @stay_has_teacher.stay_id, teacher_id: @stay_has_teacher.teacher_id } }
    end

    assert_redirected_to stay_has_teacher_url(StayHasTeacher.last)
  end

  test "should show stay_has_teacher" do
    get stay_has_teacher_url(@stay_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_stay_has_teacher_url(@stay_has_teacher)
    assert_response :success
  end

  test "should update stay_has_teacher" do
    patch stay_has_teacher_url(@stay_has_teacher), params: { stay_has_teacher: { status: @stay_has_teacher.status, stay_id: @stay_has_teacher.stay_id, teacher_id: @stay_has_teacher.teacher_id } }
    assert_redirected_to stay_has_teacher_url(@stay_has_teacher)
  end

  test "should destroy stay_has_teacher" do
    assert_difference('StayHasTeacher.count', -1) do
      delete stay_has_teacher_url(@stay_has_teacher)
    end

    assert_redirected_to stay_has_teachers_url
  end
end
