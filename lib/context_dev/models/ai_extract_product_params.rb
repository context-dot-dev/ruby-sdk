# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::AI#extract_product
    class AIExtractProductParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      # @!attribute url
      #   The product page URL to extract product data from.
      #
      #   @return [String]
      required :url, String

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. Maximum allowed value is
      #   300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(url:, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ContextDev::Models::AIExtractProductParams} for more details.
      #
      #   @param url [String] The product page URL to extract product data from.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. Maximum allowed value is 30000
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
