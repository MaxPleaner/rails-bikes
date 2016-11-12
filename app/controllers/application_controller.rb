class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  http_basic_authenticate_with(
    username: "bike",
    password: "bike"
  )

  def redirect_unpermitted
   redirect_to '/', notice: "can't let you do that ..."
  end

end
