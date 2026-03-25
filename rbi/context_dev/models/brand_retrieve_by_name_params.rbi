# typed: strong

module ContextDev
  module Models
    class BrandRetrieveByNameParams < ContextDev::Internal::Type::BaseModel
      extend ContextDev::Internal::Type::RequestParameters::Converter
      include ContextDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ContextDev::BrandRetrieveByNameParams,
            ContextDev::Internal::AnyHash
          )
        end

      # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
      # Corporation'). Must be 3-30 characters.
      sig { returns(String) }
      attr_accessor :name

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      sig do
        returns(
          T.nilable(ContextDev::BrandRetrieveByNameParams::CountryGl::OrSymbol)
        )
      end
      attr_reader :country_gl

      sig do
        params(
          country_gl: ContextDev::BrandRetrieveByNameParams::CountryGl::OrSymbol
        ).void
      end
      attr_writer :country_gl

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol
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
          name: String,
          country_gl:
            ContextDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
          force_language:
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            name: String,
            country_gl:
              ContextDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
            force_language:
              ContextDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
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
            T.all(Symbol, ContextDev::BrandRetrieveByNameParams::CountryGl)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :ad,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AE =
          T.let(
            :ae,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AF =
          T.let(
            :af,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AG =
          T.let(
            :ag,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AL =
          T.let(
            :al,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AM =
          T.let(
            :am,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AN =
          T.let(
            :an,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AO =
          T.let(
            :ao,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AQ =
          T.let(
            :aq,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AR =
          T.let(
            :ar,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AS =
          T.let(
            :as,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AT =
          T.let(
            :at,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AU =
          T.let(
            :au,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AW =
          T.let(
            :aw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AZ =
          T.let(
            :az,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BA =
          T.let(
            :ba,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BB =
          T.let(
            :bb,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BD =
          T.let(
            :bd,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BE =
          T.let(
            :be,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BF =
          T.let(
            :bf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BG =
          T.let(
            :bg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BH =
          T.let(
            :bh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BI =
          T.let(
            :bi,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BJ =
          T.let(
            :bj,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BM =
          T.let(
            :bm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BN =
          T.let(
            :bn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BO =
          T.let(
            :bo,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BR =
          T.let(
            :br,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BS =
          T.let(
            :bs,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BT =
          T.let(
            :bt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BV =
          T.let(
            :bv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BW =
          T.let(
            :bw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BY =
          T.let(
            :by,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BZ =
          T.let(
            :bz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CA =
          T.let(
            :ca,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CC =
          T.let(
            :cc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CD =
          T.let(
            :cd,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CF =
          T.let(
            :cf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CG =
          T.let(
            :cg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CH =
          T.let(
            :ch,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CI =
          T.let(
            :ci,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CK =
          T.let(
            :ck,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CL =
          T.let(
            :cl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CM =
          T.let(
            :cm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CN =
          T.let(
            :cn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CO =
          T.let(
            :co,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CR =
          T.let(
            :cr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CU =
          T.let(
            :cu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CV =
          T.let(
            :cv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CX =
          T.let(
            :cx,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CY =
          T.let(
            :cy,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CZ =
          T.let(
            :cz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DE =
          T.let(
            :de,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DJ =
          T.let(
            :dj,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DK =
          T.let(
            :dk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DM =
          T.let(
            :dm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DO =
          T.let(
            :do,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DZ =
          T.let(
            :dz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EC =
          T.let(
            :ec,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EE =
          T.let(
            :ee,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EG =
          T.let(
            :eg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EH =
          T.let(
            :eh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ER =
          T.let(
            :er,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ET =
          T.let(
            :et,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FI =
          T.let(
            :fi,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FJ =
          T.let(
            :fj,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FK =
          T.let(
            :fk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FM =
          T.let(
            :fm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FO =
          T.let(
            :fo,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FR =
          T.let(
            :fr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GA =
          T.let(
            :ga,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GB =
          T.let(
            :gb,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GD =
          T.let(
            :gd,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GE =
          T.let(
            :ge,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GF =
          T.let(
            :gf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GH =
          T.let(
            :gh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GI =
          T.let(
            :gi,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GL =
          T.let(
            :gl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GM =
          T.let(
            :gm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GN =
          T.let(
            :gn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GP =
          T.let(
            :gp,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GQ =
          T.let(
            :gq,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GR =
          T.let(
            :gr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GS =
          T.let(
            :gs,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GT =
          T.let(
            :gt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GU =
          T.let(
            :gu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GW =
          T.let(
            :gw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GY =
          T.let(
            :gy,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HK =
          T.let(
            :hk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HM =
          T.let(
            :hm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HN =
          T.let(
            :hn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HR =
          T.let(
            :hr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HT =
          T.let(
            :ht,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HU =
          T.let(
            :hu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IE =
          T.let(
            :ie,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IL =
          T.let(
            :il,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IN =
          T.let(
            :in,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IO =
          T.let(
            :io,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IQ =
          T.let(
            :iq,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IR =
          T.let(
            :ir,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IS =
          T.let(
            :is,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IT =
          T.let(
            :it,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JM =
          T.let(
            :jm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JO =
          T.let(
            :jo,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JP =
          T.let(
            :jp,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KE =
          T.let(
            :ke,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KG =
          T.let(
            :kg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KH =
          T.let(
            :kh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KI =
          T.let(
            :ki,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KM =
          T.let(
            :km,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KN =
          T.let(
            :kn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KP =
          T.let(
            :kp,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KR =
          T.let(
            :kr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KW =
          T.let(
            :kw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KY =
          T.let(
            :ky,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KZ =
          T.let(
            :kz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LA =
          T.let(
            :la,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LB =
          T.let(
            :lb,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LC =
          T.let(
            :lc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LI =
          T.let(
            :li,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LK =
          T.let(
            :lk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LR =
          T.let(
            :lr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LS =
          T.let(
            :ls,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LT =
          T.let(
            :lt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LU =
          T.let(
            :lu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LV =
          T.let(
            :lv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LY =
          T.let(
            :ly,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MA =
          T.let(
            :ma,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MC =
          T.let(
            :mc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MD =
          T.let(
            :md,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MG =
          T.let(
            :mg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MH =
          T.let(
            :mh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MK =
          T.let(
            :mk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ML =
          T.let(
            :ml,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MM =
          T.let(
            :mm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MN =
          T.let(
            :mn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MO =
          T.let(
            :mo,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MP =
          T.let(
            :mp,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MQ =
          T.let(
            :mq,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MR =
          T.let(
            :mr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MS =
          T.let(
            :ms,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MT =
          T.let(
            :mt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MU =
          T.let(
            :mu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MV =
          T.let(
            :mv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MW =
          T.let(
            :mw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MX =
          T.let(
            :mx,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MY =
          T.let(
            :my,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MZ =
          T.let(
            :mz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NA =
          T.let(
            :na,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NC =
          T.let(
            :nc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NE =
          T.let(
            :ne,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NF =
          T.let(
            :nf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NG =
          T.let(
            :ng,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NI =
          T.let(
            :ni,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NL =
          T.let(
            :nl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NO =
          T.let(
            :no,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NP =
          T.let(
            :np,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NR =
          T.let(
            :nr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NU =
          T.let(
            :nu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NZ =
          T.let(
            :nz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        OM =
          T.let(
            :om,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PA =
          T.let(
            :pa,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PE =
          T.let(
            :pe,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PF =
          T.let(
            :pf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PG =
          T.let(
            :pg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PH =
          T.let(
            :ph,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PK =
          T.let(
            :pk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PL =
          T.let(
            :pl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PM =
          T.let(
            :pm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PN =
          T.let(
            :pn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PR =
          T.let(
            :pr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PS =
          T.let(
            :ps,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PT =
          T.let(
            :pt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PW =
          T.let(
            :pw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PY =
          T.let(
            :py,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        QA =
          T.let(
            :qa,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RE =
          T.let(
            :re,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RO =
          T.let(
            :ro,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RS =
          T.let(
            :rs,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RU =
          T.let(
            :ru,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RW =
          T.let(
            :rw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SA =
          T.let(
            :sa,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SB =
          T.let(
            :sb,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SC =
          T.let(
            :sc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SD =
          T.let(
            :sd,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SE =
          T.let(
            :se,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SG =
          T.let(
            :sg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SH =
          T.let(
            :sh,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SI =
          T.let(
            :si,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SJ =
          T.let(
            :sj,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SK =
          T.let(
            :sk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SL =
          T.let(
            :sl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SM =
          T.let(
            :sm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SN =
          T.let(
            :sn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SO =
          T.let(
            :so,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SR =
          T.let(
            :sr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ST =
          T.let(
            :st,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SV =
          T.let(
            :sv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SY =
          T.let(
            :sy,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SZ =
          T.let(
            :sz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TC =
          T.let(
            :tc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TD =
          T.let(
            :td,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TF =
          T.let(
            :tf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TG =
          T.let(
            :tg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TH =
          T.let(
            :th,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TJ =
          T.let(
            :tj,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TK =
          T.let(
            :tk,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TL =
          T.let(
            :tl,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TM =
          T.let(
            :tm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TN =
          T.let(
            :tn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TO =
          T.let(
            :to,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TR =
          T.let(
            :tr,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TT =
          T.let(
            :tt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TV =
          T.let(
            :tv,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TW =
          T.let(
            :tw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TZ =
          T.let(
            :tz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UA =
          T.let(
            :ua,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UG =
          T.let(
            :ug,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UM =
          T.let(
            :um,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        US =
          T.let(
            :us,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UY =
          T.let(
            :uy,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UZ =
          T.let(
            :uz,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VA =
          T.let(
            :va,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VC =
          T.let(
            :vc,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VE =
          T.let(
            :ve,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VG =
          T.let(
            :vg,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VI =
          T.let(
            :vi,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VN =
          T.let(
            :vn,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VU =
          T.let(
            :vu,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        WF =
          T.let(
            :wf,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        WS =
          T.let(
            :ws,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        YE =
          T.let(
            :ye,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        YT =
          T.let(
            :yt,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZA =
          T.let(
            :za,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZM =
          T.let(
            :zm,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZW =
          T.let(
            :zw,
            ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
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
            T.all(Symbol, ContextDev::BrandRetrieveByNameParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ContextDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
