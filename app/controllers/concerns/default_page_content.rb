module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio |My Porttfolio Website"
    @seo_keywords = "Navroop Singh Sidhu's Portfolio"
  end
end

