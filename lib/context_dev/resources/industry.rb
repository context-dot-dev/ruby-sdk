# frozen_string_literal: true

module ContextDev
  module Resources
    class Industry
      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::IndustryRetrieveNaicsParams} for more details.
      #
      # Endpoint to classify any brand into a 2022 NAICS code.
      #
      # @overload retrieve_naics(input:, max_results: nil, min_results: nil, timeout_ms: nil, request_options: {})
      #
      # @param input [String] Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #
      # @param max_results [Integer] Maximum number of NAICS codes to return. Must be between 1 and 10. Defaults to 5
      #
      # @param min_results [Integer] Minimum number of NAICS codes to return. Must be at least 1. Defaults to 1.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::IndustryRetrieveNaicsResponse]
      #
      # @see ContextDev::Models::IndustryRetrieveNaicsParams
      def retrieve_naics(params)
        parsed, options = ContextDev::IndustryRetrieveNaicsParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/naics",
          query: query.transform_keys(
            max_results: "maxResults",
            min_results: "minResults",
            timeout_ms: "timeoutMS"
          ),
          model: ContextDev::Models::IndustryRetrieveNaicsResponse,
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
