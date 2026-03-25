# frozen_string_literal: true

module ContextDev
  module Resources
    class Brand
      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveParams} for more details.
      #
      # Retrieve logos, backdrops, colors, industry, description, and more from any
      # domain
      #
      # @overload retrieve(domain:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve brand data for (e.g., 'example.com', 'google.com'). Cann
      #
      # @param force_language [Symbol, ContextDev::Models::BrandRetrieveParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data. Works with
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveResponse]
      #
      # @see ContextDev::Models::BrandRetrieveParams
      def retrieve(params)
        parsed, options = ContextDev::BrandRetrieveParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandIdentifyFromTransactionParams} for more details.
      #
      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      #
      # @overload identify_from_transaction(transaction_info:, city: nil, country_gl: nil, force_language: nil, high_confidence_only: nil, max_speed: nil, mcc: nil, phone: nil, timeout_ms: nil, request_options: {})
      #
      # @param transaction_info [String] Transaction information to identify the brand
      #
      # @param city [String] Optional city name to prioritize when searching for the brand.
      #
      # @param country_gl [Symbol, ContextDev::Models::BrandIdentifyFromTransactionParams::CountryGl] Optional country code (GL parameter) to specify the country. This affects the ge
      #
      # @param force_language [Symbol, ContextDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param high_confidence_only [Boolean] When set to true, the API will perform an additional verification steps to ensur
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param mcc [String] Optional Merchant Category Code (MCC) to help identify the business category/ind
      #
      # @param phone [Float] Optional phone number from the transaction to help verify brand match.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandIdentifyFromTransactionResponse]
      #
      # @see ContextDev::Models::BrandIdentifyFromTransactionParams
      def identify_from_transaction(params)
        parsed, options = ContextDev::BrandIdentifyFromTransactionParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/transaction_identifier",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandIdentifyFromTransactionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveByEmailParams} for more details.
      #
      # Retrieve brand information using an email address while detecting disposable and
      # free email addresses. This endpoint extracts the domain from the email address
      # and returns brand data for that domain. Disposable and free email addresses
      # (like gmail.com, yahoo.com) will throw a 422 error.
      #
      # @overload retrieve_by_email(email:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to retrieve brand data for (e.g., 'contact@example.com'). The doma
      #
      # @param force_language [Symbol, ContextDev::Models::BrandRetrieveByEmailParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveByEmailResponse]
      #
      # @see ContextDev::Models::BrandRetrieveByEmailParams
      def retrieve_by_email(params)
        parsed, options = ContextDev::BrandRetrieveByEmailParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-email",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveByEmailResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveByIsinParams} for more details.
      #
      # Retrieve brand information using an ISIN (International Securities
      # Identification Number). This endpoint looks up the company associated with the
      # ISIN and returns its brand data.
      #
      # @overload retrieve_by_isin(isin:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param isin [String] ISIN (International Securities Identification Number) to retrieve brand data for
      #
      # @param force_language [Symbol, ContextDev::Models::BrandRetrieveByIsinParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveByIsinResponse]
      #
      # @see ContextDev::Models::BrandRetrieveByIsinParams
      def retrieve_by_isin(params)
        parsed, options = ContextDev::BrandRetrieveByIsinParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-isin",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveByIsinResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveByNameParams} for more details.
      #
      # Retrieve brand information using a company name. This endpoint searches for the
      # company by name and returns its brand data.
      #
      # @overload retrieve_by_name(name:, country_gl: nil, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft Corporati
      #
      # @param country_gl [Symbol, ContextDev::Models::BrandRetrieveByNameParams::CountryGl] Optional country code (GL parameter) to specify the country. This affects the ge
      #
      # @param force_language [Symbol, ContextDev::Models::BrandRetrieveByNameParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveByNameResponse]
      #
      # @see ContextDev::Models::BrandRetrieveByNameParams
      def retrieve_by_name(params)
        parsed, options = ContextDev::BrandRetrieveByNameParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-name",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveByNameResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveByTickerParams} for more details.
      #
      # Retrieve brand information using a stock ticker symbol. This endpoint looks up
      # the company associated with the ticker and returns its brand data.
      #
      # @overload retrieve_by_ticker(ticker:, force_language: nil, max_speed: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #
      # @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #
      # @param force_language [Symbol, ContextDev::Models::BrandRetrieveByTickerParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param ticker_exchange [Symbol, ContextDev::Models::BrandRetrieveByTickerParams::TickerExchange] Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveByTickerResponse]
      #
      # @see ContextDev::Models::BrandRetrieveByTickerParams
      def retrieve_by_ticker(params)
        parsed, options = ContextDev::BrandRetrieveByTickerParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-ticker",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveByTickerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ContextDev::Models::BrandRetrieveSimplifiedParams} for more details.
      #
      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. This endpoint is
      # optimized for faster responses and reduced data transfer.
      #
      # @overload retrieve_simplified(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve simplified brand data for
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [ContextDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ContextDev::Models::BrandRetrieveSimplifiedResponse]
      #
      # @see ContextDev::Models::BrandRetrieveSimplifiedParams
      def retrieve_simplified(params)
        parsed, options = ContextDev::BrandRetrieveSimplifiedParams.dump_request(params)
        query = ContextDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-simplified",
          query: query.transform_keys(timeout_ms: "timeoutMS"),
          model: ContextDev::Models::BrandRetrieveSimplifiedResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [ContextDev::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
