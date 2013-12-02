class SessionsController < ApplicationController

skip_before_action :authenticate_user!

def new
end

def create
  user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      render 'new'
    end
end

def destroy
    sign_out
    redirect_to signin_path
end





end