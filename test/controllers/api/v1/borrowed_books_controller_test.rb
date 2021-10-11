require "test_helper"

class Api::V1::BorrowedBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_borrowed_book = api_v1_borrowed_books(:one)
  end

  test "should get index" do
    get api_v1_borrowed_books_url, as: :json
    assert_response :success
  end

  test "should create api_v1_borrowed_book" do
    assert_difference('Api::V1::BorrowedBook.count') do
      post api_v1_borrowed_books_url, params: { api_v1_borrowed_book: { book_id: @api_v1_borrowed_book.book_id, date_Borrowed: @api_v1_borrowed_book.date_Borrowed, date_returned: @api_v1_borrowed_book.date_returned, user_id: @api_v1_borrowed_book.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_borrowed_book" do
    get api_v1_borrowed_book_url(@api_v1_borrowed_book), as: :json
    assert_response :success
  end

  test "should update api_v1_borrowed_book" do
    patch api_v1_borrowed_book_url(@api_v1_borrowed_book), params: { api_v1_borrowed_book: { book_id: @api_v1_borrowed_book.book_id, date_Borrowed: @api_v1_borrowed_book.date_Borrowed, date_returned: @api_v1_borrowed_book.date_returned, user_id: @api_v1_borrowed_book.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_borrowed_book" do
    assert_difference('Api::V1::BorrowedBook.count', -1) do
      delete api_v1_borrowed_book_url(@api_v1_borrowed_book), as: :json
    end

    assert_response 204
  end
end
