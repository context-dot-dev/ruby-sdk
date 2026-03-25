# typed: strong

module ContextDev
  module Models
    class WebScreenshotResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::WebScreenshotResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # The normalized domain that was processed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Public URL of the uploaded screenshot image
      sig { returns(T.nilable(String)) }
      attr_reader :screenshot

      sig { params(screenshot: String).void }
      attr_writer :screenshot

      # Type of screenshot that was captured
      sig do
        returns(
          T.nilable(
            ContextDev::Models::WebScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        )
      end
      attr_reader :screenshot_type

      sig do
        params(
          screenshot_type:
            ContextDev::Models::WebScreenshotResponse::ScreenshotType::OrSymbol
        ).void
      end
      attr_writer :screenshot_type

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          code: Integer,
          domain: String,
          screenshot: String,
          screenshot_type:
            ContextDev::Models::WebScreenshotResponse::ScreenshotType::OrSymbol,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # HTTP status code
        code: nil,
        # The normalized domain that was processed
        domain: nil,
        # Public URL of the uploaded screenshot image
        screenshot: nil,
        # Type of screenshot that was captured
        screenshot_type: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            code: Integer,
            domain: String,
            screenshot: String,
            screenshot_type:
              ContextDev::Models::WebScreenshotResponse::ScreenshotType::TaggedSymbol,
            status: String
          }
        )
      end
      def to_hash
      end

      # Type of screenshot that was captured
      module ScreenshotType
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ContextDev::Models::WebScreenshotResponse::ScreenshotType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIEWPORT =
          T.let(
            :viewport,
            ContextDev::Models::WebScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        FULL_PAGE =
          T.let(
            :fullPage,
            ContextDev::Models::WebScreenshotResponse::ScreenshotType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::Models::WebScreenshotResponse::ScreenshotType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
