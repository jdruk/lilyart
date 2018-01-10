class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true, null: false
      t.references :item, foreign_key: true, null: false
      t.decimal :price_sale
      t.string :observation

      t.timestamps
    end
  end
end
