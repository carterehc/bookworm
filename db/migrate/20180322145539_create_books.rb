class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.date :yr_read
      t.date :yr_published
      t.boolean :read
      t.boolean :own
      t.string :ISBN
      t.integer :edition
      t.boolean :want_own
      t.boolean :want_read
      t.integer :times_read

      t.timestamps
    end
  end
end
