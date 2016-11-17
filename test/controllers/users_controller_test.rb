require 'test_helper'

<<<<<<< HEAD
class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get users_index_url
  #   assert_response :success
  # end

  # test "should get show" do
  #   get users_show_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get users_new_url
  #   assert_response :success
  # end

  # test "should get create" do
  #   get users_create_url
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get users_edit_url
  #   assert_response :success
  # end

  # test "should get update" do
  #   get users_update_url
  #   assert_response :success
  # end

  # test "should get delete" do
  #   get users_delete_url
  #   assert_response :success
  # end

  # test "should get destroy" do
  #   get users_destroy_url
  #   assert_response :success
  # end

=======
class UserControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:admin1)
    @other_user = users(:admin2)
  end

  test "should redirect index when not logged in" do
  get users_path
  assert_redirected_to login_url
  end


  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should get show" do
    get user_show_url
    assert_response :success
  end

  test "should get new" do
    get user_new_url
    assert_response :success
  end

  test "should get create" do
    get user_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_update_url
    assert_response :success
  end

  test "should get delete" do
    get user_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get user_destroy_url
    assert_response :success
  end

  test "should redirect edit when not logged in" do
    get edit_user_path(@user)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch user_path(@user), params: { user: { fname: @user.fname,
                                              email: @user.email } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should not allow the admin attribute to be edited via the web" do
    log_in_as(@other_user)
    assert_not @other_user.admin?
    patch user_path(@other_user), params: {
                                    user: { password:              FILL_IN,
                                            password_confirmation: FILL_IN,
                                            admin: FILL_IN } }
    assert_not @other_user.FILL_IN.admin?
  end


  test "should redirect edit when logged in as wrong user" do
    log_in_as(@other_user)
    get edit_user_path(@user)
    assert flash.empty?
    assert_redirected_to root_url
  end

  test "should redirect update when logged in as wrong user" do
    log_in_as(@other_user)
    patch user_path(@user), params: { user: { name: @user.fname,
                                              email: @user.email } }
    assert flash.empty?
    assert_redirected_to root_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'User.count' do
      delete user_path(@user)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@other_user)
    assert_no_difference 'User.count' do
      delete user_path(@user)
    end
    assert_redirected_to root_url
  end
>>>>>>> upstream/master
end
