class GroupsController < ApplicationController
  def index
    @groups = Group.where(group_type: "parent community")
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    # @group.user = current_user
    if @group.save
      redirect_to @group
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @group = Group.find(params[:id])
    @group_type = @group.group_type
    @message = Message.new
  end

  private

  def group_params
    params.require(:group).permit(:name, :post_code)
  end
end
