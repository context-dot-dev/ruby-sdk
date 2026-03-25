# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Style#extract_fonts
    class StyleExtractFontsParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The
      #   domain will be automatically normalized and validated.
      #
      #   @return [String]
      required :domain, String

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(domain:, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ContextDev::Models::StyleExtractFontsParams} for more details.
      #
      #   @param domain [String] Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The domai
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
