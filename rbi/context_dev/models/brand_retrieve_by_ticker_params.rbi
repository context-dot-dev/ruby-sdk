# typed: strong

module ContextDev
  module Models
    class BrandRetrieveByTickerParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::BrandRetrieveByTickerParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      # Must be 1-15 characters, letters/numbers/dots only.
      sig { returns(String) }
      attr_accessor :ticker

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol
          )
        )
      end
      attr_reader :ticker_exchange

      sig do
        params(
          ticker_exchange:
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol
        ).void
      end
      attr_writer :ticker_exchange

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            ticker: String,
            force_language:
              ContextDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
            ticker_exchange:
              ContextDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol,
            timeout_ms: Integer,
            request_options: ContextDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to force the language of the retrieved brand data.
      module ForceLanguage
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ContextDev::BrandRetrieveByTickerParams::ForceLanguage
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      module TickerExchange
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ContextDev::BrandRetrieveByTickerParams::TickerExchange
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX =
          T.let(
            :AMEX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        AMS =
          T.let(
            :AMS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        AQS =
          T.let(
            :AQS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ASX =
          T.let(
            :ASX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ATH =
          T.let(
            :ATH,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BER =
          T.let(
            :BER,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BME =
          T.let(
            :BME,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BRU =
          T.let(
            :BRU,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BSE =
          T.let(
            :BSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BUD =
          T.let(
            :BUD,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BUE =
          T.let(
            :BUE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BVC =
          T.let(
            :BVC,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CBOE =
          T.let(
            :CBOE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CNQ =
          T.let(
            :CNQ,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CPH =
          T.let(
            :CPH,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DFM =
          T.let(
            :DFM,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DOH =
          T.let(
            :DOH,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DUB =
          T.let(
            :DUB,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DUS =
          T.let(
            :DUS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DXE =
          T.let(
            :DXE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        EGX =
          T.let(
            :EGX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        FSX =
          T.let(
            :FSX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HAM =
          T.let(
            :HAM,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HEL =
          T.let(
            :HEL,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HKSE =
          T.let(
            :HKSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HOSE =
          T.let(
            :HOSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ICE =
          T.let(
            :ICE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        IOB =
          T.let(
            :IOB,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        IST =
          T.let(
            :IST,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JKT =
          T.let(
            :JKT,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JNB =
          T.let(
            :JNB,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JPX =
          T.let(
            :JPX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KLS =
          T.let(
            :KLS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KOE =
          T.let(
            :KOE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KSC =
          T.let(
            :KSC,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KUW =
          T.let(
            :KUW,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        LIS =
          T.let(
            :LIS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        LSE =
          T.let(
            :LSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MCX =
          T.let(
            :MCX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MIL =
          T.let(
            :MIL,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MUN =
          T.let(
            :MUN,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NASDAQ =
          T.let(
            :NASDAQ,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NEO =
          T.let(
            :NEO,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NSE =
          T.let(
            :NSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NYSE =
          T.let(
            :NYSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NZE =
          T.let(
            :NZE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        OSL =
          T.let(
            :OSL,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        OTC =
          T.let(
            :OTC,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PAR =
          T.let(
            :PAR,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PNK =
          T.let(
            :PNK,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PRA =
          T.let(
            :PRA,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        RIS =
          T.let(
            :RIS,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SAO =
          T.let(
            :SAO,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SAU =
          T.let(
            :SAU,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SES =
          T.let(
            :SES,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SET =
          T.let(
            :SET,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SGO =
          T.let(
            :SGO,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SHH =
          T.let(
            :SHH,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SHZ =
          T.let(
            :SHZ,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SIX =
          T.let(
            :SIX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        STO =
          T.let(
            :STO,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        STU =
          T.let(
            :STU,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TAI =
          T.let(
            :TAI,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TAL =
          T.let(
            :TAL,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TLV =
          T.let(
            :TLV,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TSX =
          T.let(
            :TSX,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TSXV =
          T.let(
            :TSXV,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TWO =
          T.let(
            :TWO,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        VIE =
          T.let(
            :VIE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        WSE =
          T.let(
            :WSE,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        XETRA =
          T.let(
            :XETRA,
            ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
