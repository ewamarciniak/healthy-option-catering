# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class AddQuantityToLineItem < ActiveRecord::Migration
  def self.up
    add_column :line_items, :quantity, :integer, :default => 1
  end

  def self.down
    remove_column :line_items, :quantity
  end
end
