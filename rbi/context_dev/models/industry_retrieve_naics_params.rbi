# typed: strong

module ContextDev
  module Models
    class IndustryRetrieveNaicsParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::IndustryRetrieveNaicsParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      # in `input`, it will be used for classification, otherwise, we will search for
      # the brand using the provided title.
      sig { returns(String) }
      attr_accessor :input

      # Maximum number of NAICS codes to return. Must be between 1 and 10. Defaults
      # to 5.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_results

      sig { params(max_results: Integer).void }
      attr_writer :max_results

      # Minimum number of NAICS codes to return. Must be at least 1. Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :min_results

      sig { params(min_results: Integer).void }
      attr_writer :min_results

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          input: String,
          max_results: Integer,
          min_results: Integer,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            input: String,
            max_results: Integer,
            min_results: Integer,
            timeout_ms: Integer,
            request_options: ContextDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
