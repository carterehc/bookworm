class RemoveFirstnameFromAuthors < ActiveRecord::Migration[5.1]
  def change
    remove_column :authors, :fName, :string
  end
end
