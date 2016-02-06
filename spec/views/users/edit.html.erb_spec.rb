require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :mentor => false,
      :mentee => false,
      :password_digest => "MyString",
      :admin => false,
      :description => "MyText"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_mentor[name=?]", "user[mentor]"

      assert_select "input#user_mentee[name=?]", "user[mentee]"

      assert_select "input#user_password_digest[name=?]", "user[password_digest]"

      assert_select "input#user_admin[name=?]", "user[admin]"

      assert_select "textarea#user_description[name=?]", "user[description]"
    end
  end
end
