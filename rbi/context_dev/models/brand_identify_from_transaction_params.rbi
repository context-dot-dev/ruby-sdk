# typed: strong

module ContextDev
  module Models
    class BrandIdentifyFromTransactionParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::BrandIdentifyFromTransactionParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Transaction information to identify the brand
      sig { returns(String) }
      attr_accessor :transaction_info

      # Optional city name to prioritize when searching for the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol
          )
        )
      end
      attr_reader :country_gl

      sig do
        params(
          country_gl:
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol
        ).void
      end
      attr_writer :country_gl

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # When set to true, the API will perform an additional verification steps to
      # ensure the identified brand matches the transaction with high confidence.
      # Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :high_confidence_only

      sig { params(high_confidence_only: T::Boolean).void }
      attr_writer :high_confidence_only

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional Merchant Category Code (MCC) to help identify the business
      # category/industry.
      sig { returns(T.nilable(String)) }
      attr_reader :mcc

      sig { params(mcc: String).void }
      attr_writer :mcc

      # Optional phone number from the transaction to help verify brand match.
      sig { returns(T.nilable(Float)) }
      attr_reader :phone

      sig { params(phone: Float).void }
      attr_writer :phone

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: ContextDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      module CountryGl
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ContextDev::BrandIdentifyFromTransactionParams::CountryGl
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :ad,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AE =
          T.let(
            :ae,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AF =
          T.let(
            :af,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AG =
          T.let(
            :ag,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AL =
          T.let(
            :al,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AM =
          T.let(
            :am,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AN =
          T.let(
            :an,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AO =
          T.let(
            :ao,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AQ =
          T.let(
            :aq,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AR =
          T.let(
            :ar,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AS =
          T.let(
            :as,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AT =
          T.let(
            :at,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AU =
          T.let(
            :au,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AW =
          T.let(
            :aw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AZ =
          T.let(
            :az,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BA =
          T.let(
            :ba,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BB =
          T.let(
            :bb,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BD =
          T.let(
            :bd,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BE =
          T.let(
            :be,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BF =
          T.let(
            :bf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BG =
          T.let(
            :bg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BH =
          T.let(
            :bh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BI =
          T.let(
            :bi,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BJ =
          T.let(
            :bj,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BM =
          T.let(
            :bm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BN =
          T.let(
            :bn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BO =
          T.let(
            :bo,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BR =
          T.let(
            :br,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BS =
          T.let(
            :bs,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BT =
          T.let(
            :bt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BV =
          T.let(
            :bv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BW =
          T.let(
            :bw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BY =
          T.let(
            :by,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BZ =
          T.let(
            :bz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CA =
          T.let(
            :ca,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CC =
          T.let(
            :cc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CD =
          T.let(
            :cd,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CF =
          T.let(
            :cf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CG =
          T.let(
            :cg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CH =
          T.let(
            :ch,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CI =
          T.let(
            :ci,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CK =
          T.let(
            :ck,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CL =
          T.let(
            :cl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CM =
          T.let(
            :cm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CN =
          T.let(
            :cn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CO =
          T.let(
            :co,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CR =
          T.let(
            :cr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CU =
          T.let(
            :cu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CV =
          T.let(
            :cv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CX =
          T.let(
            :cx,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CY =
          T.let(
            :cy,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CZ =
          T.let(
            :cz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DE =
          T.let(
            :de,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DJ =
          T.let(
            :dj,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DK =
          T.let(
            :dk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DM =
          T.let(
            :dm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DO =
          T.let(
            :do,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DZ =
          T.let(
            :dz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EC =
          T.let(
            :ec,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EE =
          T.let(
            :ee,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EG =
          T.let(
            :eg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EH =
          T.let(
            :eh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ER =
          T.let(
            :er,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ET =
          T.let(
            :et,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FI =
          T.let(
            :fi,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FJ =
          T.let(
            :fj,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FK =
          T.let(
            :fk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FM =
          T.let(
            :fm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FO =
          T.let(
            :fo,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FR =
          T.let(
            :fr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GA =
          T.let(
            :ga,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GB =
          T.let(
            :gb,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GD =
          T.let(
            :gd,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GE =
          T.let(
            :ge,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GF =
          T.let(
            :gf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GH =
          T.let(
            :gh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GI =
          T.let(
            :gi,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GL =
          T.let(
            :gl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GM =
          T.let(
            :gm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GN =
          T.let(
            :gn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GP =
          T.let(
            :gp,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GQ =
          T.let(
            :gq,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GR =
          T.let(
            :gr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GS =
          T.let(
            :gs,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GT =
          T.let(
            :gt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GU =
          T.let(
            :gu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GW =
          T.let(
            :gw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GY =
          T.let(
            :gy,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HK =
          T.let(
            :hk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HM =
          T.let(
            :hm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HN =
          T.let(
            :hn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HR =
          T.let(
            :hr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HT =
          T.let(
            :ht,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HU =
          T.let(
            :hu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IE =
          T.let(
            :ie,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IL =
          T.let(
            :il,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IN =
          T.let(
            :in,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IO =
          T.let(
            :io,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IQ =
          T.let(
            :iq,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IR =
          T.let(
            :ir,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IS =
          T.let(
            :is,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IT =
          T.let(
            :it,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JM =
          T.let(
            :jm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JO =
          T.let(
            :jo,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JP =
          T.let(
            :jp,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KE =
          T.let(
            :ke,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KG =
          T.let(
            :kg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KH =
          T.let(
            :kh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KI =
          T.let(
            :ki,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KM =
          T.let(
            :km,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KN =
          T.let(
            :kn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KP =
          T.let(
            :kp,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KR =
          T.let(
            :kr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KW =
          T.let(
            :kw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KY =
          T.let(
            :ky,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KZ =
          T.let(
            :kz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LA =
          T.let(
            :la,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LB =
          T.let(
            :lb,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LC =
          T.let(
            :lc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LI =
          T.let(
            :li,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LK =
          T.let(
            :lk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LR =
          T.let(
            :lr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LS =
          T.let(
            :ls,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LT =
          T.let(
            :lt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LU =
          T.let(
            :lu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LV =
          T.let(
            :lv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LY =
          T.let(
            :ly,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MA =
          T.let(
            :ma,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MC =
          T.let(
            :mc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MD =
          T.let(
            :md,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MG =
          T.let(
            :mg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MH =
          T.let(
            :mh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MK =
          T.let(
            :mk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ML =
          T.let(
            :ml,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MM =
          T.let(
            :mm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MN =
          T.let(
            :mn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MO =
          T.let(
            :mo,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MP =
          T.let(
            :mp,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MQ =
          T.let(
            :mq,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MR =
          T.let(
            :mr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MS =
          T.let(
            :ms,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MT =
          T.let(
            :mt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MU =
          T.let(
            :mu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MV =
          T.let(
            :mv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MW =
          T.let(
            :mw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MX =
          T.let(
            :mx,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MY =
          T.let(
            :my,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MZ =
          T.let(
            :mz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NA =
          T.let(
            :na,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NC =
          T.let(
            :nc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NE =
          T.let(
            :ne,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NF =
          T.let(
            :nf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NG =
          T.let(
            :ng,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NI =
          T.let(
            :ni,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NL =
          T.let(
            :nl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NO =
          T.let(
            :no,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NP =
          T.let(
            :np,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NR =
          T.let(
            :nr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NU =
          T.let(
            :nu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NZ =
          T.let(
            :nz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        OM =
          T.let(
            :om,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PA =
          T.let(
            :pa,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PE =
          T.let(
            :pe,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PF =
          T.let(
            :pf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PG =
          T.let(
            :pg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PH =
          T.let(
            :ph,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PK =
          T.let(
            :pk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PL =
          T.let(
            :pl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PM =
          T.let(
            :pm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PN =
          T.let(
            :pn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PR =
          T.let(
            :pr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PS =
          T.let(
            :ps,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PT =
          T.let(
            :pt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PW =
          T.let(
            :pw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PY =
          T.let(
            :py,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        QA =
          T.let(
            :qa,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RE =
          T.let(
            :re,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RO =
          T.let(
            :ro,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RS =
          T.let(
            :rs,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RU =
          T.let(
            :ru,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RW =
          T.let(
            :rw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SA =
          T.let(
            :sa,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SB =
          T.let(
            :sb,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SC =
          T.let(
            :sc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SD =
          T.let(
            :sd,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SE =
          T.let(
            :se,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SG =
          T.let(
            :sg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SH =
          T.let(
            :sh,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SI =
          T.let(
            :si,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SJ =
          T.let(
            :sj,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SK =
          T.let(
            :sk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SL =
          T.let(
            :sl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SM =
          T.let(
            :sm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SN =
          T.let(
            :sn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SO =
          T.let(
            :so,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SR =
          T.let(
            :sr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ST =
          T.let(
            :st,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SV =
          T.let(
            :sv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SY =
          T.let(
            :sy,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SZ =
          T.let(
            :sz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TC =
          T.let(
            :tc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TD =
          T.let(
            :td,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TF =
          T.let(
            :tf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TG =
          T.let(
            :tg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TH =
          T.let(
            :th,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TJ =
          T.let(
            :tj,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TK =
          T.let(
            :tk,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TL =
          T.let(
            :tl,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TM =
          T.let(
            :tm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TN =
          T.let(
            :tn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TO =
          T.let(
            :to,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TR =
          T.let(
            :tr,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TT =
          T.let(
            :tt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TV =
          T.let(
            :tv,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TW =
          T.let(
            :tw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TZ =
          T.let(
            :tz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UA =
          T.let(
            :ua,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UG =
          T.let(
            :ug,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UM =
          T.let(
            :um,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        US =
          T.let(
            :us,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UY =
          T.let(
            :uy,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UZ =
          T.let(
            :uz,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VA =
          T.let(
            :va,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VC =
          T.let(
            :vc,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VE =
          T.let(
            :ve,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VG =
          T.let(
            :vg,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VI =
          T.let(
            :vi,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VN =
          T.let(
            :vn,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VU =
          T.let(
            :vu,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        WF =
          T.let(
            :wf,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        WS =
          T.let(
            :ws,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        YE =
          T.let(
            :ye,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        YT =
          T.let(
            :yt,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZA =
          T.let(
            :za,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZM =
          T.let(
            :zm,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZW =
          T.let(
            :zw,
            ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional parameter to force the language of the retrieved brand data.
      module ForceLanguage
        extend ContextDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
