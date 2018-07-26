require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
     get FILL_IN
     assert_response FILL_IN
   end

  def setup
  @base_title = "Ruby on Rails Tutorial Sample App"
  end


  test "should get help" do
      get help_url
      assert_response :success
      assert_select "title", "#{@base_title}"
  end


  test "should get home" do
      get home_url
      assert_response :success
      assert_select "title", "Home | #{@base_title}"
 end

 test "should get about" do
     get about_url
     assert_response :success
     assert_select "title", "About | #{@base_title}"
 end
end
