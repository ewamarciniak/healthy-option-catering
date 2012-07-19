require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

end
