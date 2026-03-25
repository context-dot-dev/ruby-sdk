# frozen_string_literal: true

module ContextDev
  module Resources
    class AI
      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::AIAIQueryParams} for more details.
      #
      # Use AI to extract specific data points from a brand's website. The AI will crawl
      # the website and extract the requested information based on the provided data
      # points.
      #
      # @overload ai_query(data_to_extract:, domain:, specific_pages: nil, timeout_ms: nil, request_options: {})
      #
      # @param data_to_extract [Array<ContextDev::Models::AIAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      # @param domain [String] The domain name to analyze
      #
      # @param specific_pages [ContextDev::Models::AIAIQueryParams::SpecificPages] Optional object specifying which pages to analyze
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::AIAIQueryResponse]
      #
      # @see ContextDev::Models::AIAIQueryParams
      def ai_query(params)
        parsed, options = ContextDev::AIAIQueryParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/query",
          body: parsed,
          model: ContextDev::Models::AIAIQueryResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::AIExtractProductParams} for more details.
      #
      # Beta feature: Given a single URL, determines if it is a product detail page,
      # classifies the platform/product type, and extracts the product information.
      # Supports Amazon, TikTok Shop, Etsy, and generic ecommerce sites.
      #
      # @overload extract_product(url:, timeout_ms: nil, request_options: {})
      #
      # @param url [String] The product page URL to extract product data from.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. Maximum allowed value is 30000
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::AIExtractProductResponse]
      #
      # @see ContextDev::Models::AIExtractProductParams
      def extract_product(params)
        parsed, options = ContextDev::AIExtractProductParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/product",
          body: parsed,
          model: ContextDev::Models::AIExtractProductResponse,
          options: options
        )
      end

      # Beta feature: Extract product information from a brand's website. We will
      # analyze the website and return a list of products with details such as name,
      # description, image, pricing, features, and more.
      #
      # @overload extract_products(body:, request_options: {})
      #
      # @param body [ContextDev::Models::AIExtractProductsParams::Body::ByDomain, ContextDev::Models::AIExtractProductsParams::Body::ByDirectURL]
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::AIExtractProductsResponse]
      #
      # @see ContextDev::Models::AIExtractProductsParams
      def extract_products(params)
        parsed, options = ContextDev::AIExtractProductsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/products",
          body: parsed[:body],
          model: ContextDev::Models::AIExtractProductsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [ContextDev::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
