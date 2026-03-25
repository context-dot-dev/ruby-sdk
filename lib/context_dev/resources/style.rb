# frozen_string_literal: true

module ContextDev
  module Resources
    class Style
      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::StyleExtractFontsParams} for more details.
      #
      # Extract font information from a brand's website including font families, usage
      # statistics, fallbacks, and element/word counts.
      #
      # @overload extract_fonts(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The domai
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::StyleExtractFontsResponse]
      #
      # @see ContextDev::Models::StyleExtractFontsParams
      def extract_fonts(params)
        parsed, options = ContextDev::StyleExtractFontsParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/fonts",
          query: query.transform_keys(timeout_ms: "timeoutMS"),
          model: ContextDev::Models::StyleExtractFontsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::StyleExtractStyleguideParams} for more details.
      #
      # Automatically extract comprehensive design system information from a brand's
      # website including colors, typography, spacing, shadows, and UI components.
      # Either 'domain' or 'directUrl' must be provided as a query parameter, but not
      # both.
      #
      # @overload extract_styleguide(direct_url: nil, domain: nil, prioritize: nil, timeout_ms: nil, request_options: {})
      #
      # @param direct_url [String] A specific URL to fetch the styleguide from directly, bypassing domain resolutio
      #
      # @param domain [String] Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      #
      # @param prioritize [Symbol, ContextDev::Models::StyleExtractStyleguideParams::Prioritize] Optional parameter to prioritize screenshot capture for styleguide extraction. I
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::StyleExtractStyleguideResponse]
      #
      # @see ContextDev::Models::StyleExtractStyleguideParams
      def extract_styleguide(params = {})
        parsed, options = ContextDev::StyleExtractStyleguideParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/styleguide",
          query: query.transform_keys(direct_url: "directUrl", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::StyleExtractStyleguideResponse,
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
