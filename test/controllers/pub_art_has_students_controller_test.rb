require 'test_helper'

class PubArtHasStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_art_has_student = pub_art_has_students(:one)
  end

  test "should get index" do
    get pub_art_has_students_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_art_has_student_url
    assert_response :success
  end

  test "should create pub_art_has_student" do
    assert_difference('PubArtHasStudent.count') do
      post pub_art_has_students_url, params: { pub_art_has_student: { pub_art_id: @pub_art_has_student.pub_art_id, status: @pub_art_has_student.status, student_id: @pub_art_has_student.student_id } }
    end

    assert_redirected_to pub_art_has_student_url(PubArtHasStudent.last)
  end

  test "should show pub_art_has_student" do
    get pub_art_has_student_url(@pub_art_has_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_art_has_student_url(@pub_art_has_student)
    assert_response :success
  end

  test "should update pub_art_has_student" do
    patch pub_art_has_student_url(@pub_art_has_student), params: { pub_art_has_student: { pub_art_id: @pub_art_has_student.pub_art_id, status: @pub_art_has_student.status, student_id: @pub_art_has_student.student_id } }
    assert_redirected_to pub_art_has_student_url(@pub_art_has_student)
  end

  test "should destroy pub_art_has_student" do
    assert_difference('PubArtHasStudent.count', -1) do
      delete pub_art_has_student_url(@pub_art_has_student)
    end

    assert_redirected_to pub_art_has_students_url
  end
end
