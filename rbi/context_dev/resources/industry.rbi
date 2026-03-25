# typed: strong

module ContextDev
  module Resources
    class Industry
      # Endpoint to classify any brand into a 2022 NAICS code.
      sig do
        params(
          input: String,
          max_results: Integer,
          min_results: Integer,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::IndustryRetrieveNaicsResponse)
      end
      def retrieve_naics(
        # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
        # in `input`, it will be used for classification, otherwise, we will search for
        # the brand using the provided title.
        input:,
        # Maximum number of NAICS codes to return. Must be between 1 and 10. Defaults
        # to 5.
        max_results: nil,
        # Minimum number of NAICS codes to return. Must be at least 1. Defaults to 1.
        min_results: nil,
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
