# typed: strong

module ContextDev
  module Models
    class WebWebScrapeMdResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::WebWebScrapeMdResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Page content converted to GitHub Flavored Markdown
      sig { returns(String) }
      attr_accessor :markdown

      # Indicates success
      sig do
        returns(
          ContextDev::Models::WebWebScrapeMdResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          markdown: String,
          success:
            ContextDev::Models::WebWebScrapeMdResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Page content converted to GitHub Flavored Markdown
        markdown:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            markdown: String,
            success:
              ContextDev::Models::WebWebScrapeMdResponse::Success::TaggedBoolean,
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
              ContextDev::Models::WebWebScrapeMdResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            ContextDev::Models::WebWebScrapeMdResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::Models::WebWebScrapeMdResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
