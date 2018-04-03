class AddTagToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :tag, :string
  end
end
