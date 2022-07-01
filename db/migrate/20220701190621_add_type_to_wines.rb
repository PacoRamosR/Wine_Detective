class AddTypeToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :type, :text
  end
end
