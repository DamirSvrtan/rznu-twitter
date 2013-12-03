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
  
end
