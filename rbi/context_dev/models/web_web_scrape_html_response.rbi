# typed: strong

module ContextDev
  module Models
    class WebWebScrapeHTMLResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::WebWebScrapeHTMLResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Raw HTML content of the page
      sig { returns(String) }
      attr_accessor :html

      # Indicates success
      sig do
        returns(
          ContextDev::Models::WebWebScrapeHTMLResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          html: String,
          success:
            ContextDev::Models::WebWebScrapeHTMLResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Raw HTML content of the page
        html:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            html: String,
            success:
              ContextDev::Models::WebWebScrapeHTMLResponse::Success::TaggedBoolean,
            url: String
          }
        )
      end
      def to_hash
      end

      # Indicates success
      module Success
        extend ContextDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              ContextDev::Models::WebWebScrapeHTMLResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            ContextDev::Models::WebWebScrapeHTMLResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::Models::WebWebScrapeHTMLResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
