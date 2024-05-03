class GroupsController < ApplicationController
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
    # @group.user = current_user
    if @group.save
      redirect_to @group, notice: "New parent community group was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @group = Group.find(params[:id])
    @group_type = @group.group_type
    @message = Message.new
  end

  def join
    group = Group.find(params[:id])
    current_user.groups << group
    redirect_to group
  end

  def leave
    group = Group.find(params[:id])
    current_user.groups.delete(group)
    redirect_to root_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :post_code)
  end
end
