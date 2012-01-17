class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, :with => :derp

  private
  def derp(e = nil)
    raise e.inspect
  end

  protect_from_forgery
end
