require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :mentor => false,
      :mentee => false,
      :password_digest => "Password Digest",
      :admin => false,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
