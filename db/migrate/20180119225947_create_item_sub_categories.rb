class CreateItemSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :item_sub_categories do |t|
      t.references :item, foreign_key: true, null: false
      t.references :sub_category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
