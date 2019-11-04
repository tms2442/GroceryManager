class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.integer :item_id
      t.text :name
      t.text :item_status
      t.integer :quantity
      t.decimal :markup
      t.integer :amount_sold
      t.integer :current_order_amount
      t.text :category

      t.timestamps
    end
    add_index :inventories, :item_id, unique: true
  end
end
