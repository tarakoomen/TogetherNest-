class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(_)
    edit_profile_path
  end
end
