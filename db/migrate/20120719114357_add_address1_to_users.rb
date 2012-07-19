class AddAddress1ToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :postcode, :string
  end

  def self.down
    remove_column :users, :address1
    remove_column :users, :address2
    remove_column :users, :city
    remove_column :users, :postcode
  end
end
