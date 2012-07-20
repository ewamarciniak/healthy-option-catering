# @reference: Ruby,S. & Thomas,D & Heinemeier Hanson, D. (2010), "Agile Web Development with Rails", USA
# @reference: Wesley Gorman, "Laptop Shop Tutorial"

class ApplicationController < ActionController::Base
  before_filter :authorize, :except => [:create]
  helper_method :current_cart
  protect_from_forgery

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  def register
    params[:user] = params[:user_session]
    redirect_to :controller => "users", :action => "create"
  end

  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end

# REFERNCE START LAPTOP TUTORIAL 2
# Returns the currently logged in user or nil if there isn't one
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end

# Make current_user available in templates as a helper
  helper_method :current_user
# Filter method to enforce a login requirement
# Apply as a before_filter on any controller you want to protect
  def authenticate
    logged_in? ? true : access_denied
  end

# Predicate method to test for a logged in user
  def logged_in?
    current_user.is_a? User
  end

# Make logged_in? available in templates as a helper
  helper_method :logged_in?

  def access_denied
    redirect_to login_path, :notice => "Please log in to continue" and return false
  end
# Refence End --------------
end
