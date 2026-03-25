# typed: strong

module ContextDev
  module Models
    class WebWebScrapeSitemapParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::WebWebScrapeSitemapParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
      # automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      sig do
        params(
          domain: String,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
        # automatically normalized and validated.
        domain:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { domain: String, request_options: ContextDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
