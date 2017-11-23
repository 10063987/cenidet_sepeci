require 'test_helper'

class CongressMemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congress_memory = congress_memories(:one)
  end

  test "should get index" do
    get congress_memories_url
    assert_response :success
  end

  test "should get new" do
    get new_congress_memory_url
    assert_response :success
  end

  test "should create congress_memory" do
    assert_difference('CongressMemory.count') do
      post congress_memories_url, params: { congress_memory: { end_page: @congress_memory.end_page, evidence: @congress_memory.evidence, memory_title: @congress_memory.memory_title, message_id: @congress_memory.message_id, start_page: @congress_memory.start_page, year: @congress_memory.year } }
    end

    assert_redirected_to congress_memory_url(CongressMemory.last)
  end

  test "should show congress_memory" do
    get congress_memory_url(@congress_memory)
    assert_response :success
  end

  test "should get edit" do
    get edit_congress_memory_url(@congress_memory)
    assert_response :success
  end

  test "should update congress_memory" do
    patch congress_memory_url(@congress_memory), params: { congress_memory: { end_page: @congress_memory.end_page, evidence: @congress_memory.evidence, memory_title: @congress_memory.memory_title, message_id: @congress_memory.message_id, start_page: @congress_memory.start_page, year: @congress_memory.year } }
    assert_redirected_to congress_memory_url(@congress_memory)
  end

  test "should destroy congress_memory" do
    assert_difference('CongressMemory.count', -1) do
      delete congress_memory_url(@congress_memory)
    end

    assert_redirected_to congress_memories_url
  end
end
