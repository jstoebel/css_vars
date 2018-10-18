require 'rails_helper'

RSpec.describe "spams/show", type: :view do
  before(:each) do
    @spam = assign(:spam, Spam.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
