class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
#start of the referenced code
      t.decimal :price, :precision => 8, :scale => 2
#end of the referenced code

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
