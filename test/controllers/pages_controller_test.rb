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

  test "GET pages#university" do
    get :university, :university_permalink => "university-of-technology-sydney"
    assert_response :success
    assert_template :application
  end
  
  test "GET pages#suburb" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "darlinghurst"
    assert_response :success
    assert_template :application
  end

  test "ROUTES pages" do
    assert_routing "/about", :controller => "pages", :action => "about"
    # assert_routing "/university/university-of-sydney", :controller => "pages", :action => "university"
    assert_routing "/university/university-of-sydney", { :controller => "pages", :action => "university", :university_permalink => "university-of-sydney" } 
    assert_routing "/university/university-of-sydney/suburb/darlinghurst", { :controller => "pages", :action => "suburb", :university_permalink => "university-of-sydney", :suburb_permalink => "darlinghurst"}
  end

end
