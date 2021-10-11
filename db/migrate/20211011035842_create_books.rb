class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.integer :publisher_year
      t.integer :genre_id
      t.integer :stock
      t.integer :available

      t.timestamps
    end
  end
end
