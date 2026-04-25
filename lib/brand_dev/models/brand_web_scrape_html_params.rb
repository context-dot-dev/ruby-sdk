# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_html
    class BrandWebScrapeHTMLParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @return [String]
      required :url, String

      # @!attribute max_age_ms
      #   Return a cached result if a prior scrape for the same parameters exists and is
      #   younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer

      # @!attribute parse_pdf
      #   When true (default), PDF URLs are fetched and their text layer is extracted and
      #   returned wrapped in <html><pdf>…</pdf></html>. When false, PDF URLs are skipped
      #   and a 400 WEBSITE_ACCESS_ERROR is returned.
      #
      #   @return [Boolean, nil]
      optional :parse_pdf, BrandDev::Internal::Type::Boolean

      # @!method initialize(url:, max_age_ms: nil, parse_pdf: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeHTMLParams} for more details.
      #
      #   @param url [String] Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param parse_pdf [Boolean] When true (default), PDF URLs are fetched and their text layer is extracted and
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
