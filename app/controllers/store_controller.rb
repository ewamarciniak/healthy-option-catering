# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA

class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @products = Product.all
    @cart = current_cart
  end

end
