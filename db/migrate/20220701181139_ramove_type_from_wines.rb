class RamoveTypeFromWines < ActiveRecord::Migration[6.1]
  def change
    remove_column :wines, :type, :string
  end
end
