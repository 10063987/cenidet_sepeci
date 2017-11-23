require 'test_helper'

class InventionHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invention_has_teacher = invention_has_teachers(:one)
  end

  test "should get index" do
    get invention_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_invention_has_teacher_url
    assert_response :success
  end

  test "should create invention_has_teacher" do
    assert_difference('InventionHasTeacher.count') do
      post invention_has_teachers_url, params: { invention_has_teacher: { invention_id: @invention_has_teacher.invention_id, status: @invention_has_teacher.status, teacher_id: @invention_has_teacher.teacher_id } }
    end

    assert_redirected_to invention_has_teacher_url(InventionHasTeacher.last)
  end

  test "should show invention_has_teacher" do
    get invention_has_teacher_url(@invention_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_invention_has_teacher_url(@invention_has_teacher)
    assert_response :success
  end

  test "should update invention_has_teacher" do
    patch invention_has_teacher_url(@invention_has_teacher), params: { invention_has_teacher: { invention_id: @invention_has_teacher.invention_id, status: @invention_has_teacher.status, teacher_id: @invention_has_teacher.teacher_id } }
    assert_redirected_to invention_has_teacher_url(@invention_has_teacher)
  end

  test "should destroy invention_has_teacher" do
    assert_difference('InventionHasTeacher.count', -1) do
      delete invention_has_teacher_url(@invention_has_teacher)
    end

    assert_redirected_to invention_has_teachers_url
  end
end
