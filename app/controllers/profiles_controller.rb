class ProfilesController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to groups_path, notice: "Your answers were succesfully saved", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:bio, :due_date, :post_code)
  end
end
