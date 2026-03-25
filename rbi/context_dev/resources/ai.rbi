# typed: strong

module ContextDev
  module Resources
    class AI
      # Use AI to extract specific data points from a brand's website. The AI will crawl
      # the website and extract the requested information based on the provided data
      # points.
      sig do
        params(
          data_to_extract:
            T::Array[ContextDev::AIAIQueryParams::DataToExtract::OrHash],
          domain: String,
          specific_pages: ContextDev::AIAIQueryParams::SpecificPages::OrHash,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::AIAIQueryResponse)
      end
      def ai_query(
        # Array of data points to extract from the website
        data_to_extract:,
        # The domain name to analyze
        domain:,
        # Optional object specifying which pages to analyze
        specific_pages: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Beta feature: Given a single URL, determines if it is a product detail page,
      # classifies the platform/product type, and extracts the product information.
      # Supports Amazon, TikTok Shop, Etsy, and generic ecommerce sites.
      sig do
        params(
          url: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::AIExtractProductResponse)
      end
      def extract_product(
        # The product page URL to extract product data from.
        url:,
        # Optional timeout in milliseconds for the request. Maximum allowed value is
        # 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Beta feature: Extract product information from a brand's website. We will
      # analyze the website and return a list of products with details such as name,
      # description, image, pricing, features, and more.
      sig do
        params(
          body:
            T.any(
              ContextDev::AIExtractProductsParams::Body::ByDomain::OrHash,
              ContextDev::AIExtractProductsParams::Body::ByDirectURL::OrHash
            ),
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::AIExtractProductsResponse)
      end
      def extract_products(body:, request_options: {})
      end

      # @api private
      sig { params(client: ContextDev::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
