require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'validations' do
    %w[title body slug].each do |attr|
      it "validates presence of #{attr}" do
        page = Page.new
        page.valid?
        expect(page.errors[attr]).to eq(['can\'t be blank'])
      end
    end
  end
end
