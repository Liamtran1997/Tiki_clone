class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.datetime :time
      t.decimal :total, precision: 10

      t.timestamps
    end
  end
end
