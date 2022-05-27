class AddLightBoldToWine < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :light_bold, :integer
  end
end
