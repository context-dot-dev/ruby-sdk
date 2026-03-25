# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Web#web_scrape_md
    class WebWebScrapeMdParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape and convert to markdown (must include http:// or https://
      #   protocol)
      #
      #   @return [String]
      required :url, String

      # @!attribute include_images
      #   Include image references in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_images, ContextDev::Internal::Type::Boolean

      # @!attribute include_links
      #   Preserve hyperlinks in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_links, ContextDev::Internal::Type::Boolean

      # @!attribute shorten_base64_images
      #   Shorten base64-encoded image data in the Markdown output
      #
      #   @return [Boolean, nil]
      optional :shorten_base64_images, ContextDev::Internal::Type::Boolean

      # @!method initialize(url:, include_images: nil, include_links: nil, shorten_base64_images: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ContextDev::Models::WebWebScrapeMdParams} for more details.
      #
      #   @param url [String] Full URL to scrape and convert to markdown (must include http:// or https:// pro
      #
      #   @param include_images [Boolean] Include image references in Markdown output
      #
      #   @param include_links [Boolean] Preserve hyperlinks in Markdown output
      #
      #   @param shorten_base64_images [Boolean] Shorten base64-encoded image data in the Markdown output
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
