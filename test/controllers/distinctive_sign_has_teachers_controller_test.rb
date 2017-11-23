require 'test_helper'

class DistinctiveSignHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distinctive_sign_has_teacher = distinctive_sign_has_teachers(:one)
  end

  test "should get index" do
    get distinctive_sign_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_distinctive_sign_has_teacher_url
    assert_response :success
  end

  test "should create distinctive_sign_has_teacher" do
    assert_difference('DistinctiveSignHasTeacher.count') do
      post distinctive_sign_has_teachers_url, params: { distinctive_sign_has_teacher: { distinctive_sign_id: @distinctive_sign_has_teacher.distinctive_sign_id, status: @distinctive_sign_has_teacher.status, teacher_id: @distinctive_sign_has_teacher.teacher_id } }
    end

    assert_redirected_to distinctive_sign_has_teacher_url(DistinctiveSignHasTeacher.last)
  end

  test "should show distinctive_sign_has_teacher" do
    get distinctive_sign_has_teacher_url(@distinctive_sign_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_distinctive_sign_has_teacher_url(@distinctive_sign_has_teacher)
    assert_response :success
  end

  test "should update distinctive_sign_has_teacher" do
    patch distinctive_sign_has_teacher_url(@distinctive_sign_has_teacher), params: { distinctive_sign_has_teacher: { distinctive_sign_id: @distinctive_sign_has_teacher.distinctive_sign_id, status: @distinctive_sign_has_teacher.status, teacher_id: @distinctive_sign_has_teacher.teacher_id } }
    assert_redirected_to distinctive_sign_has_teacher_url(@distinctive_sign_has_teacher)
  end

  test "should destroy distinctive_sign_has_teacher" do
    assert_difference('DistinctiveSignHasTeacher.count', -1) do
      delete distinctive_sign_has_teacher_url(@distinctive_sign_has_teacher)
    end

    assert_redirected_to distinctive_sign_has_teachers_url
  end
end
