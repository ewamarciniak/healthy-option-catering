class RemoveColumnsFromCategoriesProducts < ActiveRecord::Migration
  def self.up
    remove_column :categories_products, :id
    remove_column :categories_products, :created_at
    remove_column :categories_products, :updated_at
  end

  def self.down
    add_column :categories_products, :id, :integer
    add_column :categories_products, :created_at, :datetime
    add_column :categories_products, :updated_at, :datetime
  end
end



