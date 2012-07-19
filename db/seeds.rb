# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


Product.create(:title =>'Warm potato salad with shallot dressing', :description => 'German-style potato salad is tangy with shallot and white wine vinegar instead of mayonnaise', :image_url => '/images/chargrilledcourgette.jpg', :price => '5.79')
Product.create(:title =>'Sea bream with a courgette salad with fresh mint and rocket', :description => 'Mediterranean flavours pack in punch', :image_url => '/images/fresh_pea_broad_bean.jpg', :price => '8.99')
Product.create(:title =>'Chargrilled courgette with basil, mint, chilli and lemon', :description => 'Served at room temperature as a summery salad', :image_url => '/images/piripiriprawns.jpg', :price => '4.99')
Product.create(:title =>'Piri-piri prawns and harissa couscous', :description => 'Delicious mix of exotic flavours', :image_url => '/images/sea_bream_with_courgette.jpg', :price => '9.39')
Product.create(:title =>'Fresh pea, broad bean and ham hock salad', :description => 'Delicious ham hock salad recipe', :image_url => '/images/warmpotatosalad.jpg', :price => '4.99')

#Category.create(:name =>'vegetarian')
#Category.create(:name =>'gluten-free')
#Category.create(:name =>'dairy-free')

#Product.find(1).update_attribute( :category_id)   => 1