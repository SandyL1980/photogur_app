class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_user_session_path
    end
  end

 protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username << :name
  end


end
