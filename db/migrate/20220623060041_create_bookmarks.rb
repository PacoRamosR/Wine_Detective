class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end

    add_index :bookmarks, [:user_id, :wine_id], unique: true
  end

end
