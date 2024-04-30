class GroupsController < ApplicationController
  def index
    @groups = Group.all
    # sort by / order by post_code (descending)
    @group.user = current_user
    @user_post_code = current_user.post_code
    # @group_post_code = @group.post_code
  end

  # def new
  # end

  # def create
  # end

  def show
    @group = Group.find(params[:id])
    @group_type = @group.group_type
    @message = Message.new
  end
end
