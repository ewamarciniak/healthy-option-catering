# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class AddUserIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :user_id, :integer
  end

  def self.down
    remove_column :orders, :user_id
  end
end
