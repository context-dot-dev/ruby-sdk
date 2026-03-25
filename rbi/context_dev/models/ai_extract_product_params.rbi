# typed: strong

module ContextDev
  module Models
    class AIExtractProductParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::AIExtractProductParams,
            ContextDev::Internal::AnyHash
          )
        end

      # The product page URL to extract product data from.
      sig { returns(String) }
      attr_accessor :url

      # Optional timeout in milliseconds for the request. Maximum allowed value is
      # 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          url: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The product page URL to extract product data from.
        url:,
        # Optional timeout in milliseconds for the request. Maximum allowed value is
        # 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
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
