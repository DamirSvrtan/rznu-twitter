class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :log_action

  include SessionsHelper


  private

    def authenticate_user!
      redirect_to root_path unless signed_in?
    end

    def log_action
        log_line = request.fullpath.to_s.ljust(40, " ") + browser.name
        File.open("log/rznu.log", "a+"){|f| f << log_line + "\n" }
        # File.write('log/rznu.log', log_line)
    end

end
