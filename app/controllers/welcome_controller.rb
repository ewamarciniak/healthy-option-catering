class WelcomeController < ApplicationController
  skip_before_filter :authorize

  def home
  end

  def thank_you
  end

  def register
    @user = User.new
  end

end
