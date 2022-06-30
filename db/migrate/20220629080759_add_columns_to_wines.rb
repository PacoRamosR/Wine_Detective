class AddColumnsToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :name_en, :string, 'uncheck'
    add_column :wines, :country_en, :string, 'uncheck'
    add_column :wines, :grape_variety_en, :string, 'uncheck'
    add_column :wines, :explanation_en, :text, 'uncheck'
    add_column :wines, :pairing_en, :text, 'uncheck'
    add_column :wines, :wine_type_en, :text, 'uncheck'
  end
end
