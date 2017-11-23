require 'test_helper'

class DistinctiveSignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distinctive_sign = distinctive_signs(:one)
  end

  test "should get index" do
    get distinctive_signs_url
    assert_response :success
  end

  test "should get new" do
    get new_distinctive_sign_url
    assert_response :success
  end

  test "should create distinctive_sign" do
    assert_difference('DistinctiveSign.count') do
      post distinctive_signs_url, params: { distinctive_sign: { denomination_title: @distinctive_sign.denomination_title, evidence: @distinctive_sign.evidence, file_number: @distinctive_sign.file_number, legal_concept: @distinctive_sign.legal_concept, message_id: @distinctive_sign.message_id, presentation_date: @distinctive_sign.presentation_date, registration_number: @distinctive_sign.registration_number } }
    end

    assert_redirected_to distinctive_sign_url(DistinctiveSign.last)
  end

  test "should show distinctive_sign" do
    get distinctive_sign_url(@distinctive_sign)
    assert_response :success
  end

  test "should get edit" do
    get edit_distinctive_sign_url(@distinctive_sign)
    assert_response :success
  end

  test "should update distinctive_sign" do
    patch distinctive_sign_url(@distinctive_sign), params: { distinctive_sign: { denomination_title: @distinctive_sign.denomination_title, evidence: @distinctive_sign.evidence, file_number: @distinctive_sign.file_number, legal_concept: @distinctive_sign.legal_concept, message_id: @distinctive_sign.message_id, presentation_date: @distinctive_sign.presentation_date, registration_number: @distinctive_sign.registration_number } }
    assert_redirected_to distinctive_sign_url(@distinctive_sign)
  end

  test "should destroy distinctive_sign" do
    assert_difference('DistinctiveSign.count', -1) do
      delete distinctive_sign_url(@distinctive_sign)
    end

    assert_redirected_to distinctive_signs_url
  end
end
