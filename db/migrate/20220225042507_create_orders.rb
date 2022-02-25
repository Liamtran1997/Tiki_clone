class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
