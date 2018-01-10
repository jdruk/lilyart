class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0, null: false
      t.references :address, null: false, foreign_key: true
      t.text :description
      t.references :user, foreign_key: true, null: false
      t.text :order_remarks

      t.timestamps
    end
  end
end
