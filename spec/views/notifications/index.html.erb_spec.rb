require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  before(:each) do
    assign(:notifications, [
      Notification.create!(
        :user_id => 1,
        :question_id => 2,
        :answer_id => 3
      ),
      Notification.create!(
        :user_id => 1,
        :question_id => 2,
        :answer_id => 3
      )
    ])
  end

  it "renders a list of notifications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
