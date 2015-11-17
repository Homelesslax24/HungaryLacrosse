class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :firstname
    devise_parameter_sanitizer.for(:account_update) << :firstname
    devise_parameter_sanitizer.for(:sign_up) << :lastname
    devise_parameter_sanitizer.for(:account_update) << :lastname
    devise_parameter_sanitizer.for(:sign_up) << :mi
    devise_parameter_sanitizer.for(:account_update) << :mi
    devise_parameter_sanitizer.for(:sign_up) << :uslnumber
    devise_parameter_sanitizer.for(:account_update) << :uslnumber
    devise_parameter_sanitizer.for(:sign_up) << :uslexpdate
    devise_parameter_sanitizer.for(:account_update) << :uslexpdate
    devise_parameter_sanitizer.for(:sign_up) << :birthday
    devise_parameter_sanitizer.for(:account_update) << :birthday
    devise_parameter_sanitizer.for(:sign_up) << :address
    devise_parameter_sanitizer.for(:account_update) << :address
    devise_parameter_sanitizer.for(:sign_up) << :apt
    devise_parameter_sanitizer.for(:account_update) << :apt
   	devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:account_update) << :city
   	devise_parameter_sanitizer.for(:sign_up) << :state
    devise_parameter_sanitizer.for(:account_update) << :state
    devise_parameter_sanitizer.for(:sign_up) << :zipcode
    devise_parameter_sanitizer.for(:account_update) << :zipcode
    devise_parameter_sanitizer.for(:sign_up) << :phonenumber
    devise_parameter_sanitizer.for(:account_update) << :phonenumber
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end
end
