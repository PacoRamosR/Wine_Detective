class AddTypeToWines < ActiveRecord::Migration[6.1]
  def change
    remove_column :wines, :type
    add_column :wines, :wine_type, :string
  end
end
