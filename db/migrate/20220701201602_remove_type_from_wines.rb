class RemoveTypeFromWines < ActiveRecord::Migration[6.1]
  def change
    remove_column :wines, :type, :text
  end
end
