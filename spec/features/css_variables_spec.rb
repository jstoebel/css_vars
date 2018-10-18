# spec/features/visitor_signs_up_spec.rb
require 'spec_helper'
require 'rails_helper'
# feature 'Page theme' do

#   scenario 'with existing theme' do
#     page = FactoryBot.create :page
#     visit page_path page.slug
#   end
# end

RSpec.describe 'Page theme' do
  describe 'theme exists' do
    it 'has red text' do
      page = FactoryBot.create :page, slug: 'new-page'
      visit page_path page.slug
    end
  end
end

