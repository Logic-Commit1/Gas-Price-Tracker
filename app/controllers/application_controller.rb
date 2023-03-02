class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    if resource.admin
      admin_path
    else
      users_path  
    end
  end

  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:mobile_number, :password])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:mobile_number, :password])
  end

end
