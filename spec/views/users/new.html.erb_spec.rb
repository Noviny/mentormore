require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :mentor => false,
      :mentee => false,
      :password_digest => "MyString",
      :admin => false,
      :description => "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_mentor[name=?]", "user[mentor]"

      assert_select "input#user_mentee[name=?]", "user[mentee]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_admin[name=?]", "user[admin]"

      assert_select "textarea#user_description[name=?]", "user[description]"
    end
  end
end
