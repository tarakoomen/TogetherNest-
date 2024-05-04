class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name nickname photo])
    # devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name nickname])
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.groups.any?
      group_path(resource.groups.where(group_type: "parent community").first)
    else
      super
    end
  end
end
