class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private

  def authenticate_admin!
    authenticate_user! && current_user.admin? ? return : (redirect_to root_path, alert: 'This area is only for admin!')
  end

  def authenticate_provider!
    authenticate_user! && current_user.provider? ? return : (redirect_to root_path, alert: 'This area is only for providers!')
  end
end
