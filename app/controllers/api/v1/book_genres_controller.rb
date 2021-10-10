class Api::V1::BookGenresController < ApplicationController
  before_action :set_api_v1_book_genre, only: [:show, :update, :destroy]

  # GET /api/v1/book_genres
  def index
    @api_v1_book_genres = BookGenre.all

    render json: @api_v1_book_genres
  end

  # GET /api/v1/book_genres/1
  def show
    render json: @api_v1_book_genre
  end

  # POST /api/v1/book_genres
  def create
    @api_v1_book_genre = BookGenre.new(api_v1_book_genre_params)

    if @api_v1_book_genre.save
      render json: @api_v1_book_genre, status: :created, location: @api_v1_book_genre
    else
      render json: @api_v1_book_genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/book_genres/1
  def update
    if @api_v1_book_genre.update(api_v1_book_genre_params)
      render json: @api_v1_book_genre
    else
      render json: @api_v1_book_genre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/book_genres/1
  def destroy
    @api_v1_book_genre.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_book_genre
      @api_v1_book_genre = BookGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_book_genre_params
      params.require(:api_v1_book_genre).permit(:name)
    end
end
