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

require 'rails_helper'

RSpec.describe Question, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
