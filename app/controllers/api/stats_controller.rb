class Api::StatsController < ApplicationController

  def popular
    @occurrences = File.readlines('/tmp/rznu-logs-map-reduce/browser-output')
  end

  def how_to

  end

end