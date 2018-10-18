module PagesHelper

  # given a page's slug, determine its theme stylesheet
  # slug(string): the page's slug
  # returns style tag for the page's theme
  def theme_style_sheet(slug)
    stylesheet_link_tag "themes/#{slug.tr('-', '_')}_theme", class: 'theme-stylesheet'
  end

end
