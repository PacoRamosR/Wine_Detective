class CreateWines < ActiveRecord::Migration[6.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :country
      t.integer :price
      t.string :grape_variety
      t.text :explanation
      t.text :pairing
      t.integer :smooth_tannic
      t.integer :dry_sweet
      t.integer :soft_acidic
      t.integer :rate

      t.timestamps
    end
  end
end
