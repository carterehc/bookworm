class AddAuthorLastToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :author_last, :string
  end
end
