class AddTypeToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :type, :string
  end
end
