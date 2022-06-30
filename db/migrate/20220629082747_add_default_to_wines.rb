class AddDefaultToWines < ActiveRecord::Migration[6.1]
  def change
    change_column(:wines, :name_en, :string, default: 'uncheck')
    change_column(:wines, :country_en, :string, default: 'uncheck')
    change_column(:wines, :grape_variety_en, :string, default: 'uncheck')
    change_column(:wines, :explanation_en, :text, default: 'uncheck')
    change_column(:wines, :pairing_en, :text, default: 'uncheck')
    change_column(:wines, :wine_type_en, :string, default: 'uncheck')
  end
end
