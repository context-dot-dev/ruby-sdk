# typed: strong

module ContextDev
  module Models
    class UtilityPrefetchByEmailParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::UtilityPrefetchByEmailParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Email address to prefetch brand data for. The domain will be extracted from the
      # email. Free email providers (gmail.com, yahoo.com, etc.) and disposable email
      # addresses are not allowed.
      sig { returns(String) }
      attr_accessor :email

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          email: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            email: String,
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
