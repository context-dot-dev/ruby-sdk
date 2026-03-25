# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Utility#prefetch_by_email
    class UtilityPrefetchByEmailParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address to prefetch brand data for. The domain will be extracted from the
      #   email. Free email providers (gmail.com, yahoo.com, etc.) and disposable email
      #   addresses are not allowed.
      #
      #   @return [String]
      required :email, String

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(email:, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ContextDev::Models::UtilityPrefetchByEmailParams} for more details.
      #
      #   @param email [String] Email address to prefetch brand data for. The domain will be extracted from the
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
