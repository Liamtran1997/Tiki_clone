class AddPriceToCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :price, :decimal, precision: 8
  end
end
