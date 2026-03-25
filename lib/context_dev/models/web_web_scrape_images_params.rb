# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Web#web_scrape_images
    class WebWebScrapeImagesParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape images from (must include http:// or https:// protocol)
      #
      #   @return [String]
      required :url, String

      # @!method initialize(url:, request_options: {})
      #   @param url [String] Full URL to scrape images from (must include http:// or https:// protocol)
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
