class MessagesController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @message = Message.new(message_params)
    @message.group = @group
    @message.user = current_user
    @message.save
    GroupChannel.broadcast_to(
      @group,
      render_to_string(partial: "messages/message", locals: { message: @message })
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
