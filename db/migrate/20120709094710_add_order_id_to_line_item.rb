# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class AddOrderIdToLineItem < ActiveRecord::Migration
  def self.up
    add_column :line_items, :order_id, :integer
  end

  def self.down
    remove_column :line_items, :order_id
  end
end
