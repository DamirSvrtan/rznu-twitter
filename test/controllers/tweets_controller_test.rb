require File.dirname(__FILE__) + '/../test_helper'

class TweetsControllerTest < ActionController::TestCase
  setup do
    @tweet = tweets(:one)
    @user = users(:one)
    @controller = Api::TweetsController.new
  end

  test "should get index" do
    get :index, user_id: @user.id
    assert_response :success
  end

  test "should get new" do
    get :new, user_id: @user.id
    assert_response :success
  end

  test "should create tweet" do
    assert_difference('Tweet.count') do
      post :create, user_id: @user.id, tweet: { content: @tweet.content, user_id: @tweet.user_id }
    end

    assert_redirected_to api_root_path
  end

  test "should show tweet" do
    get :show, user_id: @user.id, id: @tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweet.id, user_id: @user.id
    assert_response :success
  end

  test "should update tweet" do
    patch :update, id: @tweet.id, user_id: @user.id , tweet: { content: "lalala" }
    assert_redirected_to api_root_path
  end

  test "should destroy tweet" do
    assert_difference('Tweet.count', -1) do
      delete :destroy, id: @tweet.id, user_id: @user.id
    end
    assert_redirected_to api_root_path
  end

end
