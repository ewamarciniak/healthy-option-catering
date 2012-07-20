# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class AddUserIdToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :user_id, :integer
  end

  def self.down
    remove_column :products, :user_id
  end
end
