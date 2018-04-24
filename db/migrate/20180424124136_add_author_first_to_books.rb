class AddAuthorFirstToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :author_first, :string
  end
end
