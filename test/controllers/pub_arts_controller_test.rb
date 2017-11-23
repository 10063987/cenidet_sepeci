require 'test_helper'

class PubArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_art = pub_arts(:one)
  end

  test "should get index" do
    get pub_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_art_url
    assert_response :success
  end

  test "should create pub_art" do
    assert_difference('PubArt.count') do
      post pub_arts_url, params: { pub_art: { acceptance_letter: @pub_art.acceptance_letter, article_title: @pub_art.article_title, end_page: @pub_art.end_page, evidence: @pub_art.evidence, grade: @pub_art.grade, index: @pub_art.index, issn_electronic: @pub_art.issn_electronic, issn_printed: @pub_art.issn_printed, magazine_name: @pub_art.magazine_name, magazine_number: @pub_art.magazine_number, magazine_volume: @pub_art.magazine_volume, message_id: @pub_art.message_id, pub_art_type_id: @pub_art.pub_art_type_id, publication_date: @pub_art.publication_date, start_page: @pub_art.start_page, year: @pub_art.year } }
    end

    assert_redirected_to pub_art_url(PubArt.last)
  end

  test "should show pub_art" do
    get pub_art_url(@pub_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_art_url(@pub_art)
    assert_response :success
  end

  test "should update pub_art" do
    patch pub_art_url(@pub_art), params: { pub_art: { acceptance_letter: @pub_art.acceptance_letter, article_title: @pub_art.article_title, end_page: @pub_art.end_page, evidence: @pub_art.evidence, grade: @pub_art.grade, index: @pub_art.index, issn_electronic: @pub_art.issn_electronic, issn_printed: @pub_art.issn_printed, magazine_name: @pub_art.magazine_name, magazine_number: @pub_art.magazine_number, magazine_volume: @pub_art.magazine_volume, message_id: @pub_art.message_id, pub_art_type_id: @pub_art.pub_art_type_id, publication_date: @pub_art.publication_date, start_page: @pub_art.start_page, year: @pub_art.year } }
    assert_redirected_to pub_art_url(@pub_art)
  end

  test "should destroy pub_art" do
    assert_difference('PubArt.count', -1) do
      delete pub_art_url(@pub_art)
    end

    assert_redirected_to pub_arts_url
  end
end
