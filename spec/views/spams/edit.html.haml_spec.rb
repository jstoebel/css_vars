require 'rails_helper'

RSpec.describe "spams/edit", type: :view do
  before(:each) do
    @spam = assign(:spam, Spam.create!())
  end

  it "renders the edit spam form" do
    render

    assert_select "form[action=?][method=?]", spam_path(@spam), "post" do
    end
  end
end
