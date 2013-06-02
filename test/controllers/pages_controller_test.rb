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
  
  test "GET pages#suburb darlinghurst" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "darlinghurst"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb erskinville" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "erskineville"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb haymarket" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "haymarket"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb pottspoint" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "pottspoint"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb redfern" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "redfern"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb waterloo" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "waterloo"
    assert_response :success
    assert_template :application
  end


  test "GET pages#suburb glebe" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "glebe"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb newtown" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "newtown"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb pyrmont" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "pyrmont"
    assert_response :success
    assert_template :application
  end

  test "GET pages#suburb surryhills" do
    get :university, :university_permalink => "university-of-technology-sydney", :suburb_permalink => "surryhills"
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
