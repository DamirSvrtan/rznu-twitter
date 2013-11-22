class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :log_action
  before_action :authenticate_user!
  
  private

    def authenticate_user!
      redirect_to root_path unless signed_in?
    end

    def log_action
        log_line = request.fullpath.to_s.ljust(40, " ") + browser.name + "\n"
        File.open("log/rznu.log", "a+"){|f| f << log_line  }
    end

end
