# Classname: categories_products
# Date: 19.07.2012
# @author: Ewa Marciniak x11114533, Malgorzata Holubowicz x12101362

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
