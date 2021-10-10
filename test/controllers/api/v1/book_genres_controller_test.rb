require "test_helper"

class Api::V1::BookGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_book_genre = api_v1_book_genres(:one)
  end

  test "should get index" do
    get api_v1_book_genres_url, as: :json
    assert_response :success
  end

  test "should create api_v1_book_genre" do
    assert_difference('Api::V1::BookGenre.count') do
      post api_v1_book_genres_url, params: { api_v1_book_genre: { name: @api_v1_book_genre.name } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_book_genre" do
    get api_v1_book_genre_url(@api_v1_book_genre), as: :json
    assert_response :success
  end

  test "should update api_v1_book_genre" do
    patch api_v1_book_genre_url(@api_v1_book_genre), params: { api_v1_book_genre: { name: @api_v1_book_genre.name } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_book_genre" do
    assert_difference('Api::V1::BookGenre.count', -1) do
      delete api_v1_book_genre_url(@api_v1_book_genre), as: :json
    end

    assert_response 204
  end
end
