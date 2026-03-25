# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Style#extract_styleguide
    class StyleExtractStyleguideParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

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

      # @!attribute prioritize
      #   Optional parameter to prioritize screenshot capture for styleguide extraction.
      #   If 'speed', optimizes for faster capture with basic quality. If 'quality',
      #   optimizes for higher quality with longer wait times. Defaults to 'quality' if
      #   not provided.
      #
      #   @return [Symbol, ContextDev::Models::StyleExtractStyleguideParams::Prioritize, nil]
      optional :prioritize, enum: -> { ContextDev::StyleExtractStyleguideParams::Prioritize }

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(direct_url: nil, domain: nil, prioritize: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ContextDev::Models::StyleExtractStyleguideParams} for more details.
      #
      #   @param direct_url [String] A specific URL to fetch the styleguide from directly, bypassing domain resolutio
      #
      #   @param domain [String] Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      #
      #   @param prioritize [Symbol, ContextDev::Models::StyleExtractStyleguideParams::Prioritize] Optional parameter to prioritize screenshot capture for styleguide extraction. I
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional parameter to prioritize screenshot capture for styleguide extraction.
      # If 'speed', optimizes for faster capture with basic quality. If 'quality',
      # optimizes for higher quality with longer wait times. Defaults to 'quality' if
      # not provided.
      module Prioritize
        extend ContextDev::Internal::Type::Enum

        SPEED = :speed
        QUALITY = :quality

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
