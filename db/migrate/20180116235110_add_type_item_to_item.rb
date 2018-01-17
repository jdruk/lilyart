class AddTypeItemToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :type_item, :integer, default: 0, null: false
  end
end
