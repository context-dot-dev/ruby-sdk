# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_sitemap
    class BrandWebScrapeSitemapParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
      #   automatically normalized and validated.
      #
      #   @return [String]
      required :domain, String

      # @!attribute max_links
      #   Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
      #   Minimum is 1, maximum is 100,000.
      #
      #   @return [Integer, nil]
      optional :max_links, Integer

      # @!method initialize(domain:, max_links: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeSitemapParams} for more details.
      #
      #   @param domain [String] Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be auto
      #
      #   @param max_links [Integer] Maximum number of links to return from the sitemap crawl. Defaults to 10,000. Mi
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
