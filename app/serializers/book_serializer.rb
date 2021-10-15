class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :publisher, :publisher_year, :stock, :avaliable
  belongs_to :book_genre
end
