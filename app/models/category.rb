# Classname: category.rb
# Date: 19.07.2012
# @author: Ewa Marciniak x11114533, Malgorzata Holubowicz x12101362

class Category < ActiveRecord::Base
  has_and_belongs_to_many :products
end
