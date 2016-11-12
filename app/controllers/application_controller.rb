class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  http_basic_authenticate_with(
    name: ENV["HTTP_USERNAME"] || "bike",
    password: ENV["HTTP_PASSWORD"] || "bike"
  )

  def redirect_unpermitted(path=nil, notice=nil)
   redirect_to '/#{path}', notice: notice || "can't let you do that ..."
  end

end
