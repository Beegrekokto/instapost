class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :password,
  		:password_confiramtion, :name, :photo)}
  	devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, 
  		:password_confiramtion, :current_password, :name, :photo)

  def
end
