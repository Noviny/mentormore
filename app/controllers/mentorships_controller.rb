class MentorshipsController < ApplicationController

  def mentors
    @current_user.mentorships
  end

  def mentees
    @current_user.mentees
  end

  def create
    raise 'questions'
    @mentorship.create(:user_id => @current_user.id, :mentor_id => 3)
    @question = Question.find(@answer.question_id)
    respond_to do |format|
      if @answer.save
        new_notification = Notification.create({
          :user_id => @question.user_id,
          :question_id => @question.id,
          :answer_id => @answer.id
        })

        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

end