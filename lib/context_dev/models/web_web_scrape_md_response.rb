# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::Web#web_scrape_md
    class WebWebScrapeMdResponse < ContextDev::Internal::Type::BaseModel
      # @!attribute markdown
      #   Page content converted to GitHub Flavored Markdown
      #
      #   @return [String]
      required :markdown, String

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, ContextDev::Models::WebWebScrapeMdResponse::Success]
      required :success, enum: -> { ContextDev::Models::WebWebScrapeMdResponse::Success }

      # @!attribute url
      #   The URL that was scraped
      #
      #   @return [String]
      required :url, String

      # @!method initialize(markdown:, success:, url:)
      #   @param markdown [String] Page content converted to GitHub Flavored Markdown
      #
      #   @param success [Boolean, ContextDev::Models::WebWebScrapeMdResponse::Success] Indicates success
      #
      #   @param url [String] The URL that was scraped

      # Indicates success
      #
      # @see ContextDev::Models::WebWebScrapeMdResponse#success
      module Success
        extend ContextDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
