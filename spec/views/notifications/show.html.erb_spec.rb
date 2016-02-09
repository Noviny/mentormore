require 'rails_helper'

RSpec.describe "notifications/show", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :user_id => 1,
      :question_id => 2,
      :answer_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
