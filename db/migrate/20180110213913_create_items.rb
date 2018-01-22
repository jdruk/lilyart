class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :weight, null: false
      t.integer :widht, null: false
      t.integer :height, null: false
      t.integer :length, null: false
      t.decimal :price, default: 0.0, null: false
      t.text :description
      t.text :abstract
      t.string :photo
      t.json :photo_gallery
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
