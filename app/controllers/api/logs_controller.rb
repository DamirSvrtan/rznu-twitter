class Api::LogsController < ApplicationController

  skip_before_filter :log_action

  def index
    @logs = File.readlines('log/rznu.log')
  end

end