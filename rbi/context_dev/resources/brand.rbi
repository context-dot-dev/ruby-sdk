# typed: strong

module ContextDev
  module Resources
    class Brand
      # Retrieve logos, backdrops, colors, industry, description, and more from any
      # domain
      sig do
        params(
          domain: String,
          force_language:
            ContextDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveResponse)
      end
      def retrieve(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain:,
        # Optional parameter to force the language of the retrieved brand data. Works with
        # all three lookup methods.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data. Works with all three lookup methods.
        max_speed: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      sig do
        params(
          transaction_info: String,
          city: String,
          country_gl:
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol,
          force_language:
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
          high_confidence_only: T::Boolean,
          max_speed: T::Boolean,
          mcc: String,
          phone: Float,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandIdentifyFromTransactionResponse)
      end
      def identify_from_transaction(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional city name to prioritize when searching for the brand.
        city: nil,
        # Optional country code (GL parameter) to specify the country. This affects the
        # geographic location used for search queries.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # When set to true, the API will perform an additional verification steps to
        # ensure the identified brand matches the transaction with high confidence.
        # Defaults to false.
        high_confidence_only: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional Merchant Category Code (MCC) to help identify the business
        # category/industry.
        mcc: nil,
        # Optional phone number from the transaction to help verify brand match.
        phone: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using an email address while detecting disposable and
      # free email addresses. This endpoint extracts the domain from the email address
      # and returns brand data for that domain. Disposable and free email addresses
      # (like gmail.com, yahoo.com) will throw a 422 error.
      sig do
        params(
          email: String,
          force_language:
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveByEmailResponse)
      end
      def retrieve_by_email(
        # Email address to retrieve brand data for (e.g., 'contact@example.com'). The
        # domain will be extracted from the email. Free email providers (gmail.com,
        # yahoo.com, etc.) and disposable email addresses are not allowed.
        email:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using an ISIN (International Securities
      # Identification Number). This endpoint looks up the company associated with the
      # ISIN and returns its brand data.
      sig do
        params(
          isin: String,
          force_language:
            ContextDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveByIsinResponse)
      end
      def retrieve_by_isin(
        # ISIN (International Securities Identification Number) to retrieve brand data for
        # (e.g., 'AU000000IMD5', 'US0378331005'). Must be exactly 12 characters: 2 letters
        # followed by 9 alphanumeric characters and ending with a digit.
        isin:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using a company name. This endpoint searches for the
      # company by name and returns its brand data.
      sig do
        params(
          name: String,
          country_gl:
            ContextDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
          force_language:
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveByNameResponse)
      end
      def retrieve_by_name(
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters.
        name:,
        # Optional country code (GL parameter) to specify the country. This affects the
        # geographic location used for search queries.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using a stock ticker symbol. This endpoint looks up
      # the company associated with the ticker and returns its brand data.
      sig do
        params(
          ticker: String,
          force_language:
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          ticker_exchange:
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveByTickerResponse)
      end
      def retrieve_by_ticker(
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
        # Must be 1-15 characters, letters/numbers/dots only.
        ticker:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
        ticker_exchange: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. This endpoint is
      # optimized for faster responses and reduced data transfer.
      sig do
        params(
          domain: String,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::BrandRetrieveSimplifiedResponse)
      end
      def retrieve_simplified(
        # Domain name to retrieve simplified brand data for
        domain:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ContextDev::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
