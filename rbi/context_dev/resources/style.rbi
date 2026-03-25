# typed: strong

module ContextDev
  module Resources
    class Style
      # Extract font information from a brand's website including font families, usage
      # statistics, fallbacks, and element/word counts.
      sig do
        params(
          domain: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::StyleExtractFontsResponse)
      end
      def extract_fonts(
        # Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Automatically extract comprehensive design system information from a brand's
      # website including colors, typography, spacing, shadows, and UI components.
      # Either 'domain' or 'directUrl' must be provided as a query parameter, but not
      # both.
      sig do
        params(
          direct_url: String,
          domain: String,
          prioritize:
            ContextDev::StyleExtractStyleguideParams::Prioritize::OrSymbol,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::StyleExtractStyleguideResponse)
      end
      def extract_styleguide(
        # A specific URL to fetch the styleguide from directly, bypassing domain
        # resolution (e.g., 'https://example.com/design-system').
        direct_url: nil,
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain: nil,
        # Optional parameter to prioritize screenshot capture for styleguide extraction.
        # If 'speed', optimizes for faster capture with basic quality. If 'quality',
        # optimizes for higher quality with longer wait times. Defaults to 'quality' if
        # not provided.
        prioritize: nil,
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
