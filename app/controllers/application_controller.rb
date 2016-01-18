class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def access_denied(exception)
    redirect_to admin_root_path, alert: exception.message
  end

  protected

  def configure_permitted_parameters
  end
end
