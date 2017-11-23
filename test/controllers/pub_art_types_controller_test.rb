require 'test_helper'

class PubArtTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_art_type = pub_art_types(:one)
  end

  test "should get index" do
    get pub_art_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_art_type_url
    assert_response :success
  end

  test "should create pub_art_type" do
    assert_difference('PubArtType.count') do
      post pub_art_types_url, params: { pub_art_type: { type: @pub_art_type.type } }
    end

    assert_redirected_to pub_art_type_url(PubArtType.last)
  end

  test "should show pub_art_type" do
    get pub_art_type_url(@pub_art_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_art_type_url(@pub_art_type)
    assert_response :success
  end

  test "should update pub_art_type" do
    patch pub_art_type_url(@pub_art_type), params: { pub_art_type: { type: @pub_art_type.type } }
    assert_redirected_to pub_art_type_url(@pub_art_type)
  end

  test "should destroy pub_art_type" do
    assert_difference('PubArtType.count', -1) do
      delete pub_art_type_url(@pub_art_type)
    end

    assert_redirected_to pub_art_types_url
  end
end
