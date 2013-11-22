class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include SessionsHelper

  
  private

    def authenticate_user!
      redirect_to root_path unless signed_in?
    end

end
