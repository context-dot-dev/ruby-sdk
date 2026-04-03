# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#styleguide
    class BrandStyleguideParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute direct_url
      #   A specific URL to fetch the styleguide from directly, bypassing domain
      #   resolution (e.g., 'https://example.com/design-system').
      #
      #   @return [String, nil]
      optional :direct_url, String

      # @!attribute domain
      #   Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      #   domain will be automatically normalized and validated.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(direct_url: nil, domain: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandStyleguideParams} for more details.
      #
      #   @param direct_url [String] A specific URL to fetch the styleguide from directly, bypassing domain resolutio
      #
      #   @param domain [String] Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
