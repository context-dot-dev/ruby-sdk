# typed: strong

module ContextDev
  module Models
    class WebScreenshotParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(ContextDev::WebScreenshotParams, ContextDev::Internal::AnyHash)
        end

      # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      sig do
        returns(
          T.nilable(ContextDev::WebScreenshotParams::FullScreenshot::OrSymbol)
        )
      end
      attr_reader :full_screenshot

      sig do
        params(
          full_screenshot:
            ContextDev::WebScreenshotParams::FullScreenshot::OrSymbol
        ).void
      end
      attr_writer :full_screenshot

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page.
      sig do
        returns(T.nilable(ContextDev::WebScreenshotParams::Page::OrSymbol))
      end
      attr_reader :page

      sig { params(page: ContextDev::WebScreenshotParams::Page::OrSymbol).void }
      attr_writer :page

      # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      # faster capture with basic quality. If 'quality', optimizes for higher quality
      # with longer wait times. Defaults to 'quality' if not provided.
      sig do
        returns(
          T.nilable(ContextDev::WebScreenshotParams::Prioritize::OrSymbol)
        )
      end
      attr_reader :prioritize

      sig do
        params(
          prioritize: ContextDev::WebScreenshotParams::Prioritize::OrSymbol
        ).void
      end
      attr_writer :prioritize

      sig do
        params(
          domain: String,
          full_screenshot:
            ContextDev::WebScreenshotParams::FullScreenshot::OrSymbol,
          page: ContextDev::WebScreenshotParams::Page::OrSymbol,
          prioritize: ContextDev::WebScreenshotParams::Prioritize::OrSymbol,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page.
        page: nil,
        # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
        # faster capture with basic quality. If 'quality', optimizes for higher quality
        # with longer wait times. Defaults to 'quality' if not provided.
        prioritize: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            full_screenshot:
              ContextDev::WebScreenshotParams::FullScreenshot::OrSymbol,
            page: ContextDev::WebScreenshotParams::Page::OrSymbol,
            prioritize: ContextDev::WebScreenshotParams::Prioritize::OrSymbol,
            request_options: ContextDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      module FullScreenshot
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ContextDev::WebScreenshotParams::FullScreenshot)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            ContextDev::WebScreenshotParams::FullScreenshot::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            ContextDev::WebScreenshotParams::FullScreenshot::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::WebScreenshotParams::FullScreenshot::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page.
      module Page
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ContextDev::WebScreenshotParams::Page) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOGIN =
          T.let(:login, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        SIGNUP =
          T.let(:signup, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        BLOG = T.let(:blog, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        CAREERS =
          T.let(:careers, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        PRICING =
          T.let(:pricing, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        TERMS =
          T.let(:terms, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        PRIVACY =
          T.let(:privacy, ContextDev::WebScreenshotParams::Page::TaggedSymbol)
        CONTACT =
          T.let(:contact, ContextDev::WebScreenshotParams::Page::TaggedSymbol)

        sig do
          override.returns(
            T::Array[ContextDev::WebScreenshotParams::Page::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      # faster capture with basic quality. If 'quality', optimizes for higher quality
      # with longer wait times. Defaults to 'quality' if not provided.
      module Prioritize
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ContextDev::WebScreenshotParams::Prioritize)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEED =
          T.let(
            :speed,
            ContextDev::WebScreenshotParams::Prioritize::TaggedSymbol
          )
        QUALITY =
          T.let(
            :quality,
            ContextDev::WebScreenshotParams::Prioritize::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[ContextDev::WebScreenshotParams::Prioritize::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
