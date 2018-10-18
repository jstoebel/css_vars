require 'rails_helper'

RSpec.describe "spams/index", type: :view do
  before(:each) do
    assign(:spams, [
      Spam.create!(),
      Spam.create!()
    ])
  end

  it "renders a list of spams" do
    render
  end
end
