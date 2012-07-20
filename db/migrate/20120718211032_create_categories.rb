# Classname: categories_products
# Date: 17.07.2012
# @author: Ewa Marciniak x11114533, Malgorzata Holubowicz x12101362

class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :product_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
