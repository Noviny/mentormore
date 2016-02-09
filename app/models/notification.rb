# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  question_id :integer
#  answer_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Notification < ActiveRecord::Base
  belongs_to :user
end
