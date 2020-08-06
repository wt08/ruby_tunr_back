require 'test_helper'

class JoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join = joins(:one)
  end

  test "should get index" do
    get joins_url, as: :json
    assert_response :success
  end

  test "should create join" do
    assert_difference('Join.count') do
      post joins_url, params: { join: { playlist_id: @join.playlist_id, song_id: @join.song_id } }, as: :json
    end

    assert_response 201
  end

  test "should show join" do
    get join_url(@join), as: :json
    assert_response :success
  end

  test "should update join" do
    patch join_url(@join), params: { join: { playlist_id: @join.playlist_id, song_id: @join.song_id } }, as: :json
    assert_response 200
  end

  test "should destroy join" do
    assert_difference('Join.count', -1) do
      delete join_url(@join), as: :json
    end

    assert_response 204
  end
end
