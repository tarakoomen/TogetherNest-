class MentorshipsController < ApplicationController
  def join
    current_user.update(is_mentor: true)
    redirect_to edit_mentor_profile_path
  end

  def find
    mentor_users = User.where(is_mentor: true)
    @mentor_match = mentor_users.min_by(3) do |mentor_user|
      (mentor_user.post_code - current_user.post_code).abs
    end
  end
end
