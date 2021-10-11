class CreateBorrowedBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowed_books do |t|
      t.integer :book_id
      t.integer :user_id
      t.timestamp :date_Borrowed
      t.timestamp :date_returned

      t.timestamps
    end
  end
end
