# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeHTMLParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandWebScrapeHTMLParams, BrandDev::Internal::AnyHash)
        end

      # Full URL to scrape (must include http:// or https:// protocol)
      sig { returns(String) }
      attr_accessor :url

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # When true (default), PDF URLs are fetched and their text layer is extracted and
      # returned wrapped in <html><pdf>…</pdf></html>. When false, PDF URLs are skipped
      # and a 400 WEBSITE_ACCESS_ERROR is returned.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :parse_pdf

      sig { params(parse_pdf: T::Boolean).void }
      attr_writer :parse_pdf

      sig do
        params(
          url: String,
          max_age_ms: Integer,
          parse_pdf: T::Boolean,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # When true (default), PDF URLs are fetched and their text layer is extracted and
        # returned wrapped in <html><pdf>…</pdf></html>. When false, PDF URLs are skipped
        # and a 400 WEBSITE_ACCESS_ERROR is returned.
        parse_pdf: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            max_age_ms: Integer,
            parse_pdf: T::Boolean,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
