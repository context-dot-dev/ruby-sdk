# typed: strong

module ContextDev
  module Models
    class IndustryRetrieveNaicsResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::IndustryRetrieveNaicsResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Array of NAICS codes and titles.
      sig do
        returns(
          T.nilable(
            T::Array[ContextDev::Models::IndustryRetrieveNaicsResponse::Code]
          )
        )
      end
      attr_reader :codes

      sig do
        params(
          codes:
            T::Array[
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::OrHash
            ]
        ).void
      end
      attr_writer :codes

      # Domain found for the brand
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Industry classification type, for naics api it will be `naics`
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          codes:
            T::Array[
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::OrHash
            ],
          domain: String,
          status: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of NAICS codes and titles.
        codes: nil,
        # Domain found for the brand
        domain: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # Industry classification type, for naics api it will be `naics`
        type: nil
      )
      end

      sig do
        override.returns(
          {
            codes:
              T::Array[ContextDev::Models::IndustryRetrieveNaicsResponse::Code],
            domain: String,
            status: String,
            type: String
          }
        )
      end
      def to_hash
      end

      class Code < ContextDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code,
              ContextDev::Internal::AnyHash
            )
          end

        # NAICS code
        sig { returns(String) }
        attr_accessor :code

        # Confidence level for how well this NAICS code matches the company description
        sig do
          returns(
            ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
          )
        end
        attr_accessor :confidence

        # NAICS title
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            code: String,
            confidence:
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::OrSymbol,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # NAICS code
          code:,
          # Confidence level for how well this NAICS code matches the company description
          confidence:,
          # NAICS title
          name:
        )
        end

        sig do
          override.returns(
            {
              code: String,
              confidence:
                ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol,
              name: String
            }
          )
        end
        def to_hash
        end

        # Confidence level for how well this NAICS code matches the company description
        module Confidence
          extend ContextDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :high,
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )
          LOW =
            T.let(
              :low,
              ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ContextDev::Models::IndustryRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
