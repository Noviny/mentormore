require 'rails_helper'

RSpec.describe "notifications/edit", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :user_id => 1,
      :question_id => 1,
      :answer_id => 1
    ))
  end

  it "renders the edit notification form" do
    render

    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_question_id[name=?]", "notification[question_id]"

      assert_select "input#notification_answer_id[name=?]", "notification[answer_id]"
    end
  end
end
