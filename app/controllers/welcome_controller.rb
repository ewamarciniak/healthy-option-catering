# Classname: welcome_controller.rb
# Date: 09.07.2012
# @author: Ewa Marciniak x11114533, Malgorzata Holubowicz x12101362

class WelcomeController < ApplicationController
  skip_before_filter :authorize

  def home
  end

  def thank_you
    session[:user_id] = nil

  end

  def register
    @user = User.new
  end

end
