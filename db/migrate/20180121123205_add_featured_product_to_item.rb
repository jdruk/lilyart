class AddFeaturedProductToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :featured_product, :boolean, null: false, default: false
  end
end
