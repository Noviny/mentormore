# == Schema Information
#
# Table name: answers
#
#  id              :integer          not null, primary key
#  name            :string
#  explaining      :text
#  user_id         :integer
#  question_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  more_mentorship :boolean
#

class Answer < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :question_id, :presence => true
  validates :explaining, :presence => true
  belongs_to :question
  belongs_to :user
end
