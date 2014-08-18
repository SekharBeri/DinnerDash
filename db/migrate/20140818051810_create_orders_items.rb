class CreateOrdersItems < ActiveRecord::Migration
  def change
    create_table :orders_items do |t|
      t.integer :item_id
      t.integer :order_id

      t.timestamps
    end
  end
end
