class MentorshipsController < ApplicationController

  def mentors
    @current_user.mentorships
  end

  def mentees
    @current_user.mentees
  end

end