# Classname: remove_id_from_categories_products.rb
# Date: 19.07.2012
# @author: Ewa Marciak x11114533, Malgorzata Holubowicz x12101362

class RemoveIdFromCategoriesProducts < ActiveRecord::Migration
  def self.up
    remove_column :categories_products, :id
  end

  def self.down
    add_column :categories_products, :id, :integer
  end
end
