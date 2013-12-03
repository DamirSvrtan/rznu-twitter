require File.dirname(__FILE__) + '/../test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @controller = Api::UsersController.new
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    post :create, user: { nick: "fernando", email: "dumb@dumb.com", password: 'test1', password_confirmation: 'test1' }
    assert_redirected_to api_root_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  # test "should get edit" do
  #   get :edit, id: @tweet
  #   assert_response :success
  # end

  # test "should update user" do
  #   patch :update, id: @user, user: { nick: @user.nick}
  #   assert_redirected_to user_path(assigns(:user))
  # end

  # test "should destroy tweet" do
  #   assert_difference('Tweet.count', -1) do
  #     delete :destroy, id: @tweet
  #   end

  #   assert_redirected_to tweets_path
  # end
end
