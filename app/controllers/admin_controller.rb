# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA

class AdminController < ApplicationController
  def index
    @total_orders = Order.count
  end
end