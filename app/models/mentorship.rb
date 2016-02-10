# == Schema Information
#
# Table name: mentorships
#
#  user_id   :integer          not null
#  mentor_id :integer          not null
#

class Mentorship < ActiveRecord::Base
  belongs_to :user
end
