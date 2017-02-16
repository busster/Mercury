require 'test_helper'

class EmotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emote = emotes(:one)
  end

  test "should get index" do
    get emotes_url
    assert_response :success
  end

  test "should get new" do
    get new_emote_url
    assert_response :success
  end

  test "should create emote" do
    assert_difference('Emote.count') do
      post emotes_url, params: { emote: { image: @emote.image, user_id: @emote.user_id } }
    end

    assert_redirected_to emote_url(Emote.last)
  end

  test "should show emote" do
    get emote_url(@emote)
    assert_response :success
  end

  test "should get edit" do
    get edit_emote_url(@emote)
    assert_response :success
  end

  test "should update emote" do
    patch emote_url(@emote), params: { emote: { image: @emote.image, user_id: @emote.user_id } }
    assert_redirected_to emote_url(@emote)
  end

  test "should destroy emote" do
    assert_difference('Emote.count', -1) do
      delete emote_url(@emote)
    end

    assert_redirected_to emotes_url
  end
end
