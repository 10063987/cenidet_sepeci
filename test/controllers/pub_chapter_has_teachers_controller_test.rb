require 'test_helper'

class PubChapterHasTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_chapter_has_teacher = pub_chapter_has_teachers(:one)
  end

  test "should get index" do
    get pub_chapter_has_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_chapter_has_teacher_url
    assert_response :success
  end

  test "should create pub_chapter_has_teacher" do
    assert_difference('PubChapterHasTeacher.count') do
      post pub_chapter_has_teachers_url, params: { pub_chapter_has_teacher: { pub_chapter_id: @pub_chapter_has_teacher.pub_chapter_id, status: @pub_chapter_has_teacher.status, teacher_id: @pub_chapter_has_teacher.teacher_id } }
    end

    assert_redirected_to pub_chapter_has_teacher_url(PubChapterHasTeacher.last)
  end

  test "should show pub_chapter_has_teacher" do
    get pub_chapter_has_teacher_url(@pub_chapter_has_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_chapter_has_teacher_url(@pub_chapter_has_teacher)
    assert_response :success
  end

  test "should update pub_chapter_has_teacher" do
    patch pub_chapter_has_teacher_url(@pub_chapter_has_teacher), params: { pub_chapter_has_teacher: { pub_chapter_id: @pub_chapter_has_teacher.pub_chapter_id, status: @pub_chapter_has_teacher.status, teacher_id: @pub_chapter_has_teacher.teacher_id } }
    assert_redirected_to pub_chapter_has_teacher_url(@pub_chapter_has_teacher)
  end

  test "should destroy pub_chapter_has_teacher" do
    assert_difference('PubChapterHasTeacher.count', -1) do
      delete pub_chapter_has_teacher_url(@pub_chapter_has_teacher)
    end

    assert_redirected_to pub_chapter_has_teachers_url
  end
end
