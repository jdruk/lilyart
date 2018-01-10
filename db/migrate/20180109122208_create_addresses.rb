class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :address, null: false
      t.string :number, default: 'S/N'
      t.string :complement
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
