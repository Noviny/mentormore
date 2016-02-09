require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :name => "MyString",
      :explaining => "MyText",
      :user_id => 1
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_name[name=?]", "answer[name]"

      assert_select "textarea#answer_explaining[name=?]", "answer[explaining]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"
    end
  end
end
