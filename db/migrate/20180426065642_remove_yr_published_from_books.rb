class RemoveYrPublishedFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :yr_published, :date
  end
end
