class AddYrReadToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :yr_read, :integer
  end
end
