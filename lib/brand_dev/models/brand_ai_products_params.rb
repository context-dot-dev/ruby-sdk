# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_products
    class BrandAIProductsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL]
      required :body, union: -> { BrandDev::BrandAIProductsParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL]
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend BrandDev::Internal::Type::Union

        variant -> { BrandDev::BrandAIProductsParams::Body::ByDomain }

        variant -> { BrandDev::BrandAIProductsParams::Body::ByDirectURL }

        class ByDomain < BrandDev::Internal::Type::BaseModel
          # @!attribute domain
          #   The domain name to analyze.
          #
          #   @return [String]
          required :domain, String

          # @!attribute max_products
          #   Maximum number of products to extract.
          #
          #   @return [Integer, nil]
          optional :max_products, Integer, api_name: :maxProducts

          # @!attribute timeout_ms
          #   Optional timeout in milliseconds for the request. Maximum allowed value is
          #   300000ms (5 minutes).
          #
          #   @return [Integer, nil]
          optional :timeout_ms, Integer, api_name: :timeoutMS

          # @!method initialize(domain:, max_products: nil, timeout_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandAIProductsParams::Body::ByDomain} for more details.
          #
          #   @param domain [String] The domain name to analyze.
          #
          #   @param max_products [Integer] Maximum number of products to extract.
          #
          #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. Maximum allowed value is 30000
        end

        class ByDirectURL < BrandDev::Internal::Type::BaseModel
          # @!attribute direct_url
          #   A specific URL to use directly as the starting point for extraction without
          #   domain resolution.
          #
          #   @return [String]
          required :direct_url, String, api_name: :directUrl

          # @!attribute max_products
          #   Maximum number of products to extract.
          #
          #   @return [Integer, nil]
          optional :max_products, Integer, api_name: :maxProducts

          # @!attribute timeout_ms
          #   Optional timeout in milliseconds for the request. Maximum allowed value is
          #   300000ms (5 minutes).
          #
          #   @return [Integer, nil]
          optional :timeout_ms, Integer, api_name: :timeoutMS

          # @!method initialize(direct_url:, max_products: nil, timeout_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL} for more details.
          #
          #   @param direct_url [String] A specific URL to use directly as the starting point for extraction without doma
          #
          #   @param max_products [Integer] Maximum number of products to extract.
          #
          #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. Maximum allowed value is 30000
        end

        # @!method self.variants
        #   @return [Array(BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL)]
      end
    end
  end
end
