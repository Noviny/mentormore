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

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true, :length => { :minimum => 2 }
  has_many :questions
  has_many :notifications
  has_many :answers

  has_many :mentorships, :foreign_key => :user_a_id
  has_many :users, :through => :mentorships, :source => :user_b
end
