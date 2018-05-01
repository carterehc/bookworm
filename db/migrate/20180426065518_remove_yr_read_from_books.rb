class RemoveYrReadFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :yr_read, :date
  end
end
