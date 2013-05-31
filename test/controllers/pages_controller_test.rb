require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do 
  end

  test "GET pages#home" do
    get :home
    assert_response :success
    assert_template :application
  end
  
  test "GET pages#about" do
    get :about
    assert_response :success
    assert_template :application
  end

  test "GET pages#contact" do
    get :contact
    assert_response :success
    assert_template :application
  end

  test "ROUTES pages" do
    assert_routing "/about", :controller => "pages", :action => "about"
  end

end
