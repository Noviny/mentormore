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

require 'rails_helper'

RSpec.describe Answer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
