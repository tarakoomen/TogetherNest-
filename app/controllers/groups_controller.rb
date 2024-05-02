class GroupsController < ApplicationController
  def index
    # @group.user = current_user
    @user_post_code = current_user.post_code
    closest_group = @groups.min_by { |group| (group[:postcode] - user.postcode).abs }
    @groups = Group.sorted_by(closest_group).limit(3)
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
