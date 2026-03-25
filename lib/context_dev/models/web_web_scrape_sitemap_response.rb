# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Web#web_scrape_sitemap
    class WebWebScrapeSitemapResponse < ContextDev::Internal::Type::BaseModel
      # @!attribute domain
      #   The normalized domain that was crawled
      #
      #   @return [String]
      required :domain, String

      # @!attribute meta
      #   Metadata about the sitemap crawl operation
      #
      #   @return [ContextDev::Models::WebWebScrapeSitemapResponse::Meta]
      required :meta, -> { ContextDev::Models::WebWebScrapeSitemapResponse::Meta }

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, ContextDev::Models::WebWebScrapeSitemapResponse::Success]
      required :success, enum: -> { ContextDev::Models::WebWebScrapeSitemapResponse::Success }

      # @!attribute urls
      #   Array of discovered page URLs from the sitemap (max 500)
      #
      #   @return [Array<String>]
      required :urls, ContextDev::Internal::Type::ArrayOf[String]

      # @!method initialize(domain:, meta:, success:, urls:)
      #   @param domain [String] The normalized domain that was crawled
      #
      #   @param meta [ContextDev::Models::WebWebScrapeSitemapResponse::Meta] Metadata about the sitemap crawl operation
      #
      #   @param success [Boolean, ContextDev::Models::WebWebScrapeSitemapResponse::Success] Indicates success
      #
      #   @param urls [Array<String>] Array of discovered page URLs from the sitemap (max 500)

      # @see ContextDev::Models::WebWebScrapeSitemapResponse#meta
      class Meta < ContextDev::Internal::Type::BaseModel
        # @!attribute errors
        #   Number of errors encountered during crawling
        #
        #   @return [Integer]
        required :errors, Integer

        # @!attribute sitemaps_discovered
        #   Total number of sitemap files discovered
        #
        #   @return [Integer]
        required :sitemaps_discovered, Integer, api_name: :sitemapsDiscovered

        # @!attribute sitemaps_fetched
        #   Number of sitemap files successfully fetched and parsed
        #
        #   @return [Integer]
        required :sitemaps_fetched, Integer, api_name: :sitemapsFetched

        # @!attribute sitemaps_skipped
        #   Number of sitemap files skipped (due to errors, timeouts, or limits)
        #
        #   @return [Integer]
        required :sitemaps_skipped, Integer, api_name: :sitemapsSkipped

        # @!method initialize(errors:, sitemaps_discovered:, sitemaps_fetched:, sitemaps_skipped:)
        #   Metadata about the sitemap crawl operation
        #
        #   @param errors [Integer] Number of errors encountered during crawling
        #
        #   @param sitemaps_discovered [Integer] Total number of sitemap files discovered
        #
        #   @param sitemaps_fetched [Integer] Number of sitemap files successfully fetched and parsed
        #
        #   @param sitemaps_skipped [Integer] Number of sitemap files skipped (due to errors, timeouts, or limits)
      end

      # Indicates success
      #
      # @see ContextDev::Models::WebWebScrapeSitemapResponse#success
      module Success
        extend ContextDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
