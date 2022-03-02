class RemoveQuantityFromLineIteam < ActiveRecord::Migration[5.1]
  def change
    remove_column :line_items, :quantity, :integer
  end
end
