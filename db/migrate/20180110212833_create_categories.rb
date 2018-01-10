class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :photo_category

      t.timestamps
    end
  end
end
