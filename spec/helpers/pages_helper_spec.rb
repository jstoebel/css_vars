require 'rails_helper'

RSpec.describe PagesHelper, type: :helper do
  describe '#theme_style_sheet' do
    it 'returns the correct stylesheet' do
      expect(
        theme_style_sheet('my-page')
      ).to eq(
        '<link rel="stylesheet" media="screen" href="/stylesheets/themes/my_page_theme.css" class="theme-stylesheet" />'
      )
    end
  end
end
