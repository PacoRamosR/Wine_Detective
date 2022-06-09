class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false
      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
