require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	test "should get root" do
<<<<<<< HEAD
    get FILL_IN
    assert_response FILL_IN
=======
    get '/'
    assert_response :success
>>>>>>> upstream/master
  end

  	test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "RestaRun"
  end

    test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About"
  end


end
