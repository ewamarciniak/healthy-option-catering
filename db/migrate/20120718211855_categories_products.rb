class CategoriesProducts < ActiveRecord::Migration
  def self.up
    remove_column :categories, :product_id
    create_table :categories_products do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :categories_products
  end
end
