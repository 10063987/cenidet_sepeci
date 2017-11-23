require 'test_helper'

class TutorialCommitteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_committee = tutorial_committees(:one)
  end

  test "should get index" do
    get tutorial_committees_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_committee_url
    assert_response :success
  end

  test "should create tutorial_committee" do
    assert_difference('TutorialCommittee.count') do
      post tutorial_committees_url, params: { tutorial_committee: { name: @tutorial_committee.name, period: @tutorial_committee.period, student_id: @tutorial_committee.student_id, teacher_type_id: @tutorial_committee.teacher_type_id } }
    end

    assert_redirected_to tutorial_committee_url(TutorialCommittee.last)
  end

  test "should show tutorial_committee" do
    get tutorial_committee_url(@tutorial_committee)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_committee_url(@tutorial_committee)
    assert_response :success
  end

  test "should update tutorial_committee" do
    patch tutorial_committee_url(@tutorial_committee), params: { tutorial_committee: { name: @tutorial_committee.name, period: @tutorial_committee.period, student_id: @tutorial_committee.student_id, teacher_type_id: @tutorial_committee.teacher_type_id } }
    assert_redirected_to tutorial_committee_url(@tutorial_committee)
  end

  test "should destroy tutorial_committee" do
    assert_difference('TutorialCommittee.count', -1) do
      delete tutorial_committee_url(@tutorial_committee)
    end

    assert_redirected_to tutorial_committees_url
  end
end
