class MentorProfilesController < ApplicationController
  def edit
  end

  def update
    if mentor_params[:parent_experience].to_i >= 2 && current_user.update(mentor_params)
      redirect_to group_path(current_user.groups.where(group_type: "parent community").first), notice: "Your answers have been succesfully saved", status: :see_other
    else
      flash[:alert] = "You need at least 2 years of parenting experience to create a mentor profile."
      redirect_to edit_mentor_profile_path
    end
  end

  private

  def mentor_params
    params.require(:user).permit(:bio, :post_code, :parent_experience)
  end
end
