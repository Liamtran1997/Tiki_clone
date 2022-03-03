class RemoveColumnFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_columns :carts, :product_id , :quantity, :user_id, :price, :total ,:time
  end
end
