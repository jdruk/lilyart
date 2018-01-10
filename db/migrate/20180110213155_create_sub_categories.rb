class CreateSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categories do |t|
      t.string :name, null: false
      t.string :photo_sub_category
      t.string :description, null: false
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
