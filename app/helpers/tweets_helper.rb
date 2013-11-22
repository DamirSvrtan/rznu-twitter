module TweetsHelper
  def tweet_owner(user)
    current_user == user
  end
end
