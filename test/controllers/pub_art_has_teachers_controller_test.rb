require 'test_helper'

class PubArtHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_art_has_teacher = pub_art_has_teachers(:one)
  end

  test "should get index" do
    get pub_art_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_art_has_teacher_url
    assert_response :success
  end

  test "should create pub_art_has_teacher" do
    assert_difference('PubArtHasTeacher.count') do
      post pub_art_has_teachers_url, params: { pub_art_has_teacher: { pub_art_id: @pub_art_has_teacher.pub_art_id, status: @pub_art_has_teacher.status, teacher_id: @pub_art_has_teacher.teacher_id } }
    end

    assert_redirected_to pub_art_has_teacher_url(PubArtHasTeacher.last)
  end

  test "should show pub_art_has_teacher" do
    get pub_art_has_teacher_url(@pub_art_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_art_has_teacher_url(@pub_art_has_teacher)
    assert_response :success
  end

  test "should update pub_art_has_teacher" do
    patch pub_art_has_teacher_url(@pub_art_has_teacher), params: { pub_art_has_teacher: { pub_art_id: @pub_art_has_teacher.pub_art_id, status: @pub_art_has_teacher.status, teacher_id: @pub_art_has_teacher.teacher_id } }
    assert_redirected_to pub_art_has_teacher_url(@pub_art_has_teacher)
  end

  test "should destroy pub_art_has_teacher" do
    assert_difference('PubArtHasTeacher.count', -1) do
      delete pub_art_has_teacher_url(@pub_art_has_teacher)
    end

    assert_redirected_to pub_art_has_teachers_url
  end
end
