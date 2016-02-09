require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :name => "MyString",
      :asking => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_name[name=?]", "question[name]"

      assert_select "textarea#question_asking[name=?]", "question[asking]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
