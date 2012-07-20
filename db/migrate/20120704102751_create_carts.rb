# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :carts
  end
end
