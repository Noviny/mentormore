# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  name       :string
#  asking     :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  timeframe  :date
#

class Question < ActiveRecord::Base
  validates :asking, :presence => true
  validates :user_id, :presence => true
  has_many :answers
end
