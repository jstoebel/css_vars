require 'rails_helper'

RSpec.describe "spams/new", type: :view do
  before(:each) do
    assign(:spam, Spam.new())
  end

  it "renders new spam form" do
    render

    assert_select "form[action=?][method=?]", spams_path, "post" do
    end
  end
end
