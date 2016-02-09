# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  mentor          :boolean
#  mentee          :boolean
#  password_digest :string
#  admin           :boolean
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
