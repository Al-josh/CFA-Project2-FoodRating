class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :birthday, :email, :password, :remember_me, :avatar)}
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :birthday, :email, :password, :current_password, :remember_me, :avatar)}

  end

  def authorize_admin
    redirect_to "/", status: 401 unless current_user.admin?
    #redirects to previous page
  end
end
