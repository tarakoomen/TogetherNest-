class GroupUsersController < ApplicationController
  def create
    @group_user = GroupUser.create(user_id: current_user.id, group_id:params[:group].to_i)
    redirect_back(fallback_location: root_path)
  end
end
