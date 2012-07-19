class AccountsController < ApplicationController
  def profile
    @order = current_user.orders.last
  end

  def history
    @orders = current_user.orders.all
  end

  def details

  end

  def show

  end

end
