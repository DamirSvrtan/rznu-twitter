class Api::UsersController < ApplicationController

  skip_before_filter :authenticate_user!, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to api_root_path
    else 
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:nick, :email, :password, :password_confirmation)
  end

end