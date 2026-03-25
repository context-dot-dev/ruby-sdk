# frozen_string_literal: true

module ContextDev
  module Resources
    class Utility
      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::UtilityPrefetchParams} for more details.
      #
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint does not charge credits and is available for paid
      # customers to optimize future requests. [You must be on a paid plan to use this
      # endpoint]
      #
      # @overload prefetch(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to prefetch brand data for
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::UtilityPrefetchResponse]
      #
      # @see ContextDev::Models::UtilityPrefetchParams
      def prefetch(params)
        parsed, options = ContextDev::UtilityPrefetchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/prefetch",
          body: parsed,
          model: ContextDev::Models::UtilityPrefetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::UtilityPrefetchByEmailParams} for more details.
      #
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint accepts an email address, extracts the domain from it,
      # validates that it's not a disposable or free email provider, and queues the
      # domain for prefetching. This endpoint does not charge credits and is available
      # for paid customers to optimize future requests. [You must be on a paid plan to
      # use this endpoint]
      #
      # @overload prefetch_by_email(email:, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to prefetch brand data for. The domain will be extracted from the
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::UtilityPrefetchByEmailResponse]
      #
      # @see ContextDev::Models::UtilityPrefetchByEmailParams
      def prefetch_by_email(params)
        parsed, options = ContextDev::UtilityPrefetchByEmailParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/prefetch-by-email",
          body: parsed,
          model: ContextDev::Models::UtilityPrefetchByEmailResponse,
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
