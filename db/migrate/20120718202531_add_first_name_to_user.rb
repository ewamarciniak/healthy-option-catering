# Classname: categories_products
# Date: 17.07.2012
# @author: Ewa Marciniak x11114533, Malgorzata Holubowicz x12101362

class AddFirstNameToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
