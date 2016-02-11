class MentorshipsController < ApplicationController

  def mentors
    @current_user.mentorships
  end

  def mentees
    @current_user.mentees
  end

  def create
    @mentorship = Mentorship.create(:user_id => @current_user.id, :mentor_id => params[:mentor_id])
      if @mentorship.save
        # new_notification = Notification.create({
        #   :user_id => @question.user_id,
        #   :question_id => @question.id,
        #   :answer_id => @answer.id
        # })
        redirect_to mentors_path
      else
        redirect_to root_path
    end
  end

end