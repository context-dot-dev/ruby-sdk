# frozen_string_literal: true

module ContextDev
  module Models
    # @see ContextDev::Resources::AI#extract_product
    class AIExtractProductResponse < ContextDev::Internal::Type::BaseModel
      # @!attribute is_product_page
      #   Whether the given URL is a product detail page
      #
      #   @return [Boolean, nil]
      optional :is_product_page, ContextDev::Internal::Type::Boolean

      # @!attribute platform
      #   The detected ecommerce platform, or null if not a product page
      #
      #   @return [Symbol, ContextDev::Models::AIExtractProductResponse::Platform, nil]
      optional :platform, enum: -> { ContextDev::Models::AIExtractProductResponse::Platform }, nil?: true

      # @!attribute product
      #   The extracted product data, or null if not a product page
      #
      #   @return [ContextDev::Models::AIExtractProductResponse::Product, nil]
      optional :product, -> { ContextDev::Models::AIExtractProductResponse::Product }, nil?: true

      # @!method initialize(is_product_page: nil, platform: nil, product: nil)
      #   @param is_product_page [Boolean] Whether the given URL is a product detail page
      #
      #   @param platform [Symbol, ContextDev::Models::AIExtractProductResponse::Platform, nil] The detected ecommerce platform, or null if not a product page
      #
      #   @param product [ContextDev::Models::AIExtractProductResponse::Product, nil] The extracted product data, or null if not a product page

      # The detected ecommerce platform, or null if not a product page
      #
      # @see ContextDev::Models::AIExtractProductResponse#platform
      module Platform
        extend ContextDev::Internal::Type::Enum

        AMAZON = :amazon
        TIKTOK_SHOP = :tiktok_shop
        ETSY = :etsy
        GENERIC = :generic

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see ContextDev::Models::AIExtractProductResponse#product
      class Product < ContextDev::Internal::Type::BaseModel
        # @!attribute description
        #   Description of the product
        #
        #   @return [String]
        required :description, String

        # @!attribute features
        #   List of product features
        #
        #   @return [Array<String>]
        required :features, ContextDev::Internal::Type::ArrayOf[String]

        # @!attribute images
        #   URLs to product images on the page (up to 7)
        #
        #   @return [Array<String>]
        required :images, ContextDev::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   Name of the product
        #
        #   @return [String]
        required :name, String

        # @!attribute tags
        #   Tags associated with the product
        #
        #   @return [Array<String>]
        required :tags, ContextDev::Internal::Type::ArrayOf[String]

        # @!attribute target_audience
        #   Target audience for the product (array of strings)
        #
        #   @return [Array<String>]
        required :target_audience, ContextDev::Internal::Type::ArrayOf[String]

        # @!attribute billing_frequency
        #   Billing frequency for the product
        #
        #   @return [Symbol, ContextDev::Models::AIExtractProductResponse::Product::BillingFrequency, nil]
        optional :billing_frequency,
                 enum: -> { ContextDev::Models::AIExtractProductResponse::Product::BillingFrequency },
                 nil?: true

        # @!attribute category
        #   Category of the product
        #
        #   @return [String, nil]
        optional :category, String, nil?: true

        # @!attribute currency
        #   Currency code for the price (e.g., USD, EUR)
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute image_url
        #   URL to the product image
        #
        #   @return [String, nil]
        optional :image_url, String, nil?: true

        # @!attribute price
        #   Price of the product
        #
        #   @return [Float, nil]
        optional :price, Float, nil?: true

        # @!attribute pricing_model
        #   Pricing model for the product
        #
        #   @return [Symbol, ContextDev::Models::AIExtractProductResponse::Product::PricingModel, nil]
        optional :pricing_model,
                 enum: -> { ContextDev::Models::AIExtractProductResponse::Product::PricingModel },
                 nil?: true

        # @!attribute url
        #   URL to the product page
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        # @!method initialize(description:, features:, images:, name:, tags:, target_audience:, billing_frequency: nil, category: nil, currency: nil, image_url: nil, price: nil, pricing_model: nil, url: nil)
        #   The extracted product data, or null if not a product page
        #
        #   @param description [String] Description of the product
        #
        #   @param features [Array<String>] List of product features
        #
        #   @param images [Array<String>] URLs to product images on the page (up to 7)
        #
        #   @param name [String] Name of the product
        #
        #   @param tags [Array<String>] Tags associated with the product
        #
        #   @param target_audience [Array<String>] Target audience for the product (array of strings)
        #
        #   @param billing_frequency [Symbol, ContextDev::Models::AIExtractProductResponse::Product::BillingFrequency, nil] Billing frequency for the product
        #
        #   @param category [String, nil] Category of the product
        #
        #   @param currency [String, nil] Currency code for the price (e.g., USD, EUR)
        #
        #   @param image_url [String, nil] URL to the product image
        #
        #   @param price [Float, nil] Price of the product
        #
        #   @param pricing_model [Symbol, ContextDev::Models::AIExtractProductResponse::Product::PricingModel, nil] Pricing model for the product
        #
        #   @param url [String, nil] URL to the product page

        # Billing frequency for the product
        #
        # @see ContextDev::Models::AIExtractProductResponse::Product#billing_frequency
        module BillingFrequency
          extend ContextDev::Internal::Type::Enum

          MONTHLY = :monthly
          YEARLY = :yearly
          ONE_TIME = :one_time
          USAGE_BASED = :usage_based

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Pricing model for the product
        #
        # @see ContextDev::Models::AIExtractProductResponse::Product#pricing_model
        module PricingModel
          extend ContextDev::Internal::Type::Enum

          PER_SEAT = :per_seat
          FLAT = :flat
          TIERED = :tiered
          FREEMIUM = :freemium
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
