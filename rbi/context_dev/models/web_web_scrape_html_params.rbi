# typed: strong

module ContextDev
  module Models
    class WebWebScrapeHTMLParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::WebWebScrapeHTMLParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Full URL to scrape (must include http:// or https:// protocol)
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          url: String,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { url: String, request_options: ContextDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
