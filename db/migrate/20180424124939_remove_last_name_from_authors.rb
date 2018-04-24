class RemoveLastNameFromAuthors < ActiveRecord::Migration[5.1]
  def change
    remove_column :authors, :lName, :string
  end
end
