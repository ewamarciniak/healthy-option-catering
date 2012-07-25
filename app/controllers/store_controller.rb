# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA

class StoreController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :is_admin?

  def index
    #@products = Product.all
    @cart = current_cart
    @products = Product.search(params[:search_query])

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @products }
    end


  end

end
