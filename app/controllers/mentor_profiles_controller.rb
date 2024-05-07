class MentorProfilesController < ApplicationController
  def edit
  end

  def update
    if current_user.update(mentor_params)
      redirect_to group_path(current_user.groups.where(group_type: "parent community").first), notice: "Your answers were succesfully saved", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def mentor_params
    params.require(:user).permit(:bio, :post_code, :parent_experience)
  end
end
