class BorrowedBookSerializer < ActiveModel::Serializer
  attributes :id :date_borrowed :date_returned
  belongs_to :book
  belongs_to :user
end
