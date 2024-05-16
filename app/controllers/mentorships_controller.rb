class MentorshipsController < ApplicationController
  def join
    if current_user.update(is_mentor: true)
      redirect_to edit_mentor_profile_path
    else
      redirect_to mentorship_path, notice: current_user.errors.full_messages.to_sentence
    end
  end

  def find
    mentor_users = User.where(is_mentor: true).excluding(current_user)
    @mentor_match = mentor_users.min_by(3) do |mentor_user|
      (mentor_user.post_code - current_user.post_code).abs
    end
  end

  def create
    mentor_user = User.find(params[:mentor_id])
    current_user.update(mentor: mentor_user)
    mentor_user.update(mentee: current_user)
    mentor_group = Group.create(name: "mentor/mentoree private chat", group_type: "mentor", post_code: nil)
    mentor_group.users << mentor_user
    mentor_group.users << current_user
    redirect_to mentor_group
  end

  def show
    if current_user.mentor.present? || current_user.mentee.present?
      redirect_to current_user.groups.where(group_type: "mentor").first
    elsif current_user.is_mentor == true && current_user.mentee.nil?
      redirect_to mentor_message_mentorship_path
    else
      render :show
    end
  end
end
