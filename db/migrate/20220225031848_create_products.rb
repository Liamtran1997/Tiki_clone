class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.decimal :price, :precision => 8
      t.integer :unit

      t.timestamps
    end
  end
end
