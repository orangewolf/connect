class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    root_path
  end

  def ensure_admin
    # debugger
    # unless current_donor.present? && current_donor.is_admin?
    #   redirect_to root_path, alert: 'You are not authorized to do that.'
    # else
    #   return true
    # end
  end

  def current_organization
    Organization.first
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :image
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
