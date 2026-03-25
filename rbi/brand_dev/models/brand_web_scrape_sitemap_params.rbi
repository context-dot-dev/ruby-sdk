# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeSitemapParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandWebScrapeSitemapParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
      # automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
      # Minimum is 1, maximum is 100,000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_links

      sig { params(max_links: Integer).void }
      attr_writer :max_links

      sig do
        params(
          domain: String,
          max_links: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
        # automatically normalized and validated.
        domain:,
        # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
        # Minimum is 1, maximum is 100,000.
        max_links: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            max_links: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
