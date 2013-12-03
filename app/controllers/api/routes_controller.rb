class Api::RoutesController < ApplicationController

  def index
      r = Rails.application.routes.routes
      i = ActionDispatch::Routing::RoutesInspector.new(r)
      f = ActionDispatch::Routing::ConsoleFormatter.new
     @routes =  i.format(f).split("\n")
     @routes.shift
  end

end