class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def ensure_admin
    unless current_user.present? && current_user.is_admin?
      redirect_to root_path, alert: 'You are not authorized to do that.'
    else
      return true
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :image, :name
  end
end
