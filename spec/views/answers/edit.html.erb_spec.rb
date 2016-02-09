require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :name => "MyString",
      :explaining => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input#answer_name[name=?]", "answer[name]"

      assert_select "textarea#answer_explaining[name=?]", "answer[explaining]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"
    end
  end
end
