class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
  @application = Application.find(params[:id])

  if current_user
    @status = @application.status.build
  end
end
end


