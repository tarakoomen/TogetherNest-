class GroupsController < ApplicationController
  before_action :find_group, only: [:show, :join, :leave, :users]
  before_action :authorize_access, only: [:show]

  def index
    groups = Group.where(group_type: "parent community").where.not(post_code: nil)
    @relevant_groups = groups.min_by(3) do |group|
      (group.post_code - current_user.post_code).abs
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user
    if @group.save
      redirect_to @group, notice: "New parent community group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @group_type = @group.group_type
    if @group_type == "mentor"
      group_user_ids = @group.group_users.pluck(:user_id)
      @group_chat_mentor = User.where(id: group_user_ids).excluding(current_user).first
    end
    @message = Message.new
  end

  def join
    current_user.groups << @group
    redirect_to @group
  end

  def leave
    if @group.group_type == "parent community"
      current_user.groups.delete(@group)
      redirect_to groups_path
    else
      if current_user.is_mentor?
        current_user.mentee&.update(mentor: nil)
        current_user.update(mentee: nil)
      end
      unless current_user.is_mentor?
        current_user.mentor&.update(mentee: nil)
        current_user.update(mentor: nil)
      end
      @group.destroy
      redirect_to root_path
    end
  end

  def users
    @users = @group.users
  end

  private

  def find_group
    @group = Group.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def authorize_access
    find_group
    return if @group.users.include?(current_user)

    flash[:alert] = "You aren't a member of this group."
    redirect_to root_path
  end

  def group_params
    params.require(:group).permit(:name, :post_code, :due_date)
  end

  def configure_navbar_visibility
    @show_navbar = true
  end

end
