# == Schema Information
#
# Table name: mentorships
#
#  user_a_id :integer          not null
#  user_b_id :integer          not null
#

class Mentorship < ActiveRecord::Base
  belongs_to :user
end
