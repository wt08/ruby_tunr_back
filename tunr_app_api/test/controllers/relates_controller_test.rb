require 'test_helper'

class RelatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relate = relates(:one)
  end

  test "should get index" do
    get relates_url, as: :json
    assert_response :success
  end

  test "should create relate" do
    assert_difference('Relate.count') do
      post relates_url, params: { relate: { playlist_id: @relate.playlist_id, song_id: @relate.song_id } }, as: :json
    end

    assert_response 201
  end

  test "should show relate" do
    get relate_url(@relate), as: :json
    assert_response :success
  end

  test "should update relate" do
    patch relate_url(@relate), params: { relate: { playlist_id: @relate.playlist_id, song_id: @relate.song_id } }, as: :json
    assert_response 200
  end

  test "should destroy relate" do
    assert_difference('Relate.count', -1) do
      delete relate_url(@relate), as: :json
    end

    assert_response 204
  end
end
