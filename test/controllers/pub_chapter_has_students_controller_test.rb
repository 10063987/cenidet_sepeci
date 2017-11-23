require 'test_helper'

class PubChapterHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_chapter_has_student = pub_chapter_has_students(:one)
  end

  test "should get index" do
    get pub_chapter_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_chapter_has_student_url
    assert_response :success
  end

  test "should create pub_chapter_has_student" do
    assert_difference('PubChapterHasStudent.count') do
      post pub_chapter_has_students_url, params: { pub_chapter_has_student: { pub_chapter_id: @pub_chapter_has_student.pub_chapter_id, status: @pub_chapter_has_student.status, student_id: @pub_chapter_has_student.student_id } }
    end

    assert_redirected_to pub_chapter_has_student_url(PubChapterHasStudent.last)
  end

  test "should show pub_chapter_has_student" do
    get pub_chapter_has_student_url(@pub_chapter_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_chapter_has_student_url(@pub_chapter_has_student)
    assert_response :success
  end

  test "should update pub_chapter_has_student" do
    patch pub_chapter_has_student_url(@pub_chapter_has_student), params: { pub_chapter_has_student: { pub_chapter_id: @pub_chapter_has_student.pub_chapter_id, status: @pub_chapter_has_student.status, student_id: @pub_chapter_has_student.student_id } }
    assert_redirected_to pub_chapter_has_student_url(@pub_chapter_has_student)
  end

  test "should destroy pub_chapter_has_student" do
    assert_difference('PubChapterHasStudent.count', -1) do
      delete pub_chapter_has_student_url(@pub_chapter_has_student)
    end

    assert_redirected_to pub_chapter_has_students_url
  end
end
