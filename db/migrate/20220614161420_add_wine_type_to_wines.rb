class AddWineTypeToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :wine_type, :string
  end
end
