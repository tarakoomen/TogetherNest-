class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(_)
    edit_profile_path
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
      if @user.update_without_password(user_params)
        redirect_to groups_path, notice: "Your profile was successfully updated."
      else
        render :edit
      end
  end

  def destroy
    current_user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :nickname, :photo)
  end

end
