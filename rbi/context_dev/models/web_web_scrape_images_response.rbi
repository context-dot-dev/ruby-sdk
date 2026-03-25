# typed: strong

module ContextDev
  module Models
    class WebWebScrapeImagesResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::WebWebScrapeImagesResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Array of scraped images
      sig do
        returns(T::Array[ContextDev::Models::WebWebScrapeImagesResponse::Image])
      end
      attr_accessor :images

      # Indicates success
      sig do
        returns(
          ContextDev::Models::WebWebScrapeImagesResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          images:
            T::Array[
              ContextDev::Models::WebWebScrapeImagesResponse::Image::OrHash
            ],
          success:
            ContextDev::Models::WebWebScrapeImagesResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of scraped images
        images:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            images:
              T::Array[ContextDev::Models::WebWebScrapeImagesResponse::Image],
            success:
              ContextDev::Models::WebWebScrapeImagesResponse::Success::TaggedBoolean,
            url: String
          }
        )
      end
      def to_hash
      end

      class Image < ContextDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ContextDev::Models::WebWebScrapeImagesResponse::Image,
              ContextDev::Internal::AnyHash
            )
          end

        # Alt text of the image, or null if not present
        sig { returns(T.nilable(String)) }
        attr_accessor :alt

        # The HTML element the image was found in
        sig do
          returns(
            ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
          )
        end
        attr_accessor :element

        # The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
        sig { returns(String) }
        attr_accessor :src

        # The type/format of the src value
        sig do
          returns(
            ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            alt: T.nilable(String),
            element:
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::OrSymbol,
            src: String,
            type:
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Alt text of the image, or null if not present
          alt:,
          # The HTML element the image was found in
          element:,
          # The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
          src:,
          # The type/format of the src value
          type:
        )
        end

        sig do
          override.returns(
            {
              alt: T.nilable(String),
              element:
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol,
              src: String,
              type:
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The HTML element the image was found in
        module Element
          extend ContextDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Element
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMG =
            T.let(
              :img,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SVG =
            T.let(
              :svg,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          LINK =
            T.let(
              :link,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SOURCE =
            T.let(
              :source,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Element::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type/format of the src value
        module Type
          extend ContextDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          URL =
            T.let(
              :url,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          BASE64 =
            T.let(
              :base64,
              ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ContextDev::Models::WebWebScrapeImagesResponse::Image::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Indicates success
      module Success
        extend ContextDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              ContextDev::Models::WebWebScrapeImagesResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            ContextDev::Models::WebWebScrapeImagesResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::Models::WebWebScrapeImagesResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
