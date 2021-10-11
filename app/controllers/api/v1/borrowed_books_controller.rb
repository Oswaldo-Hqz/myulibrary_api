class Api::V1::BorrowedBooksController < ApplicationController
  before_action :set_api_v1_borrowed_book, only: [:show, :update, :destroy]

  # GET /api/v1/borrowed_books
  def index
    @api_v1_borrowed_books = BorrowedBook.all

    render json: @api_v1_borrowed_books
  end

  # GET /api/v1/borrowed_books/1
  def show
    render json: @api_v1_borrowed_book
  end

  # POST /api/v1/borrowed_books
  def create
    @api_v1_borrowed_book = BorrowedBook.new(api_v1_borrowed_book_params)

    if @api_v1_borrowed_book.save
      render json: @api_v1_borrowed_book, status: :created, location: @api_v1_borrowed_book
    else
      render json: @api_v1_borrowed_book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/borrowed_books/1
  def update
    if @api_v1_borrowed_book.update(api_v1_borrowed_book_params)
      render json: @api_v1_borrowed_book
    else
      render json: @api_v1_borrowed_book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/borrowed_books/1
  def destroy
    @api_v1_borrowed_book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_borrowed_book
      @api_v1_borrowed_book = BorrowedBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_borrowed_book_params
      params.require(:api_v1_borrowed_book).permit(:book_id, :user_id, :date_Borrowed, :date_returned)
    end
end
