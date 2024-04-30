class MessagesController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @message = Message.new(message_params)
    @message.group = @group
    @message.user = current_user
    @message.save
    GroupChannel.broadcast_to(
      @group,
      message: render_to_string(partial: "message", locals: { message: @message }),
      sender_id: @message.user.id
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
