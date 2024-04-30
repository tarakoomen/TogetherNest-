class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @group_type = @group.group_type
    @message = Message.new
  end
end
