require 'test_helper'

class PubChaptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_chapter = pub_chapters(:one)
  end

  test "should get index" do
    get pub_chapters_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_chapter_url
    assert_response :success
  end

  test "should create pub_chapter" do
    assert_difference('PubChapter.count') do
      post pub_chapters_url, params: { pub_chapter: { chapter_number: @pub_chapter.chapter_number, chapter_title: @pub_chapter.chapter_title, edition_number: @pub_chapter.edition_number, end_page: @pub_chapter.end_page, evidence: @pub_chapter.evidence, isbn: @pub_chapter.isbn, message_id: @pub_chapter.message_id, publisher: @pub_chapter.publisher, start_page: @pub_chapter.start_page } }
    end

    assert_redirected_to pub_chapter_url(PubChapter.last)
  end

  test "should show pub_chapter" do
    get pub_chapter_url(@pub_chapter)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_chapter_url(@pub_chapter)
    assert_response :success
  end

  test "should update pub_chapter" do
    patch pub_chapter_url(@pub_chapter), params: { pub_chapter: { chapter_number: @pub_chapter.chapter_number, chapter_title: @pub_chapter.chapter_title, edition_number: @pub_chapter.edition_number, end_page: @pub_chapter.end_page, evidence: @pub_chapter.evidence, isbn: @pub_chapter.isbn, message_id: @pub_chapter.message_id, publisher: @pub_chapter.publisher, start_page: @pub_chapter.start_page } }
    assert_redirected_to pub_chapter_url(@pub_chapter)
  end

  test "should destroy pub_chapter" do
    assert_difference('PubChapter.count', -1) do
      delete pub_chapter_url(@pub_chapter)
    end

    assert_redirected_to pub_chapters_url
  end
end
