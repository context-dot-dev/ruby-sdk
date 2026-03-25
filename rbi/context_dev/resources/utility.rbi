# typed: strong

module ContextDev
  module Resources
    class Utility
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint does not charge credits and is available for paid
      # customers to optimize future requests. [You must be on a paid plan to use this
      # endpoint]
      sig do
        params(
          domain: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::UtilityPrefetchResponse)
      end
      def prefetch(
        # Domain name to prefetch brand data for
        domain:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint accepts an email address, extracts the domain from it,
      # validates that it's not a disposable or free email provider, and queues the
      # domain for prefetching. This endpoint does not charge credits and is available
      # for paid customers to optimize future requests. [You must be on a paid plan to
      # use this endpoint]
      sig do
        params(
          email: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::UtilityPrefetchByEmailResponse)
      end
      def prefetch_by_email(
        # Email address to prefetch brand data for. The domain will be extracted from the
        # email. Free email providers (gmail.com, yahoo.com, etc.) and disposable email
        # addresses are not allowed.
        email:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ContextDev::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
