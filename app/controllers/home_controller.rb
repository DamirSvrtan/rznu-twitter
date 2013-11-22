class HomeController < ApplicationController
  
  skip_before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    respond_to do |format|
      format.html
      format.json{ render :json => @tweets.to_json }
    end
  end


  
end