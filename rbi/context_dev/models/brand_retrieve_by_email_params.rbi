# typed: strong

module ContextDev
  module Models
    class BrandRetrieveByEmailParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::BrandRetrieveByEmailParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Email address to retrieve brand data for (e.g., 'contact@example.com'). The
      # domain will be extracted from the email. Free email providers (gmail.com,
      # yahoo.com, etc.) and disposable email addresses are not allowed.
      sig { returns(String) }
      attr_accessor :email

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol
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

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          email: String,
          force_language:
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            email: String,
            force_language:
              ContextDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
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
            T.all(Symbol, ContextDev::BrandRetrieveByEmailParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandRetrieveByEmailParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
