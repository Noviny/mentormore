require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :user_id => 1,
      :question_id => 1,
      :answer_id => 1
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_question_id[name=?]", "notification[question_id]"

      assert_select "input#notification_answer_id[name=?]", "notification[answer_id]"
    end
  end
end
