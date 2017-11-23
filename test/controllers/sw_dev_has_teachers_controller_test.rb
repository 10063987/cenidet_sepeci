require 'test_helper'

class SwDevHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sw_dev_has_teacher = sw_dev_has_teachers(:one)
  end

  test "should get index" do
    get sw_dev_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_sw_dev_has_teacher_url
    assert_response :success
  end

  test "should create sw_dev_has_teacher" do
    assert_difference('SwDevHasTeacher.count') do
      post sw_dev_has_teachers_url, params: { sw_dev_has_teacher: { status: @sw_dev_has_teacher.status, sw_dev_id: @sw_dev_has_teacher.sw_dev_id, teacher_id: @sw_dev_has_teacher.teacher_id } }
    end

    assert_redirected_to sw_dev_has_teacher_url(SwDevHasTeacher.last)
  end

  test "should show sw_dev_has_teacher" do
    get sw_dev_has_teacher_url(@sw_dev_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_sw_dev_has_teacher_url(@sw_dev_has_teacher)
    assert_response :success
  end

  test "should update sw_dev_has_teacher" do
    patch sw_dev_has_teacher_url(@sw_dev_has_teacher), params: { sw_dev_has_teacher: { status: @sw_dev_has_teacher.status, sw_dev_id: @sw_dev_has_teacher.sw_dev_id, teacher_id: @sw_dev_has_teacher.teacher_id } }
    assert_redirected_to sw_dev_has_teacher_url(@sw_dev_has_teacher)
  end

  test "should destroy sw_dev_has_teacher" do
    assert_difference('SwDevHasTeacher.count', -1) do
      delete sw_dev_has_teacher_url(@sw_dev_has_teacher)
    end

    assert_redirected_to sw_dev_has_teachers_url
  end
end
