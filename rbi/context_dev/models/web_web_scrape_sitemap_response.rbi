# typed: strong

module ContextDev
  module Models
    class WebWebScrapeSitemapResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::WebWebScrapeSitemapResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # The normalized domain that was crawled
      sig { returns(String) }
      attr_accessor :domain

      # Metadata about the sitemap crawl operation
      sig { returns(ContextDev::Models::WebWebScrapeSitemapResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: ContextDev::Models::WebWebScrapeSitemapResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      # Indicates success
      sig do
        returns(
          ContextDev::Models::WebWebScrapeSitemapResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Array of discovered page URLs from the sitemap (max 500)
      sig { returns(T::Array[String]) }
      attr_accessor :urls

      sig do
        params(
          domain: String,
          meta: ContextDev::Models::WebWebScrapeSitemapResponse::Meta::OrHash,
          success:
            ContextDev::Models::WebWebScrapeSitemapResponse::Success::OrBoolean,
          urls: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The normalized domain that was crawled
        domain:,
        # Metadata about the sitemap crawl operation
        meta:,
        # Indicates success
        success:,
        # Array of discovered page URLs from the sitemap (max 500)
        urls:
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            meta: ContextDev::Models::WebWebScrapeSitemapResponse::Meta,
            success:
              ContextDev::Models::WebWebScrapeSitemapResponse::Success::TaggedBoolean,
            urls: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class Meta < ContextDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ContextDev::Models::WebWebScrapeSitemapResponse::Meta,
              ContextDev::Internal::AnyHash
            )
          end

        # Number of errors encountered during crawling
        sig { returns(Integer) }
        attr_accessor :errors

        # Total number of sitemap files discovered
        sig { returns(Integer) }
        attr_accessor :sitemaps_discovered

        # Number of sitemap files successfully fetched and parsed
        sig { returns(Integer) }
        attr_accessor :sitemaps_fetched

        # Number of sitemap files skipped (due to errors, timeouts, or limits)
        sig { returns(Integer) }
        attr_accessor :sitemaps_skipped

        # Metadata about the sitemap crawl operation
        sig do
          params(
            errors: Integer,
            sitemaps_discovered: Integer,
            sitemaps_fetched: Integer,
            sitemaps_skipped: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of errors encountered during crawling
          errors:,
          # Total number of sitemap files discovered
          sitemaps_discovered:,
          # Number of sitemap files successfully fetched and parsed
          sitemaps_fetched:,
          # Number of sitemap files skipped (due to errors, timeouts, or limits)
          sitemaps_skipped:
        )
        end

        sig do
          override.returns(
            {
              errors: Integer,
              sitemaps_discovered: Integer,
              sitemaps_fetched: Integer,
              sitemaps_skipped: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Indicates success
      module Success
        extend ContextDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              ContextDev::Models::WebWebScrapeSitemapResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            ContextDev::Models::WebWebScrapeSitemapResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::Models::WebWebScrapeSitemapResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
