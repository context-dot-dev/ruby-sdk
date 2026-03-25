# typed: strong

module ContextDev
  module Models
    class AIAIQueryResponse < ContextDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ContextDev::Models::AIAIQueryResponse,
            ContextDev::Internal::AnyHash
          )
        end

      # Array of extracted data points
      sig do
        returns(
          T.nilable(
            T::Array[ContextDev::Models::AIAIQueryResponse::DataExtracted]
          )
        )
      end
      attr_reader :data_extracted

      sig do
        params(
          data_extracted:
            T::Array[
              ContextDev::Models::AIAIQueryResponse::DataExtracted::OrHash
            ]
        ).void
      end
      attr_writer :data_extracted

      # The domain that was analyzed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # List of URLs that were analyzed
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :urls_analyzed

      sig { params(urls_analyzed: T::Array[String]).void }
      attr_writer :urls_analyzed

      sig do
        params(
          data_extracted:
            T::Array[
              ContextDev::Models::AIAIQueryResponse::DataExtracted::OrHash
            ],
          domain: String,
          status: String,
          urls_analyzed: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of extracted data points
        data_extracted: nil,
        # The domain that was analyzed
        domain: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # List of URLs that were analyzed
        urls_analyzed: nil
      )
      end

      sig do
        override.returns(
          {
            data_extracted:
              T::Array[ContextDev::Models::AIAIQueryResponse::DataExtracted],
            domain: String,
            status: String,
            urls_analyzed: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class DataExtracted < ContextDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ContextDev::Models::AIAIQueryResponse::DataExtracted,
              ContextDev::Internal::AnyHash
            )
          end

        # Name of the extracted data point
        sig { returns(T.nilable(String)) }
        attr_reader :datapoint_name

        sig { params(datapoint_name: String).void }
        attr_writer :datapoint_name

        # Value of the extracted data point. Can be a primitive type, an array of
        # primitives, or an array of objects when datapoint_list_type is 'object'.
        sig do
          returns(
            T.nilable(
              ContextDev::Models::AIAIQueryResponse::DataExtracted::DatapointValue::Variants
            )
          )
        end
        attr_reader :datapoint_value

        sig do
          params(
            datapoint_value:
              ContextDev::Models::AIAIQueryResponse::DataExtracted::DatapointValue::Variants
          ).void
        end
        attr_writer :datapoint_value

        sig do
          params(
            datapoint_name: String,
            datapoint_value:
              ContextDev::Models::AIAIQueryResponse::DataExtracted::DatapointValue::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of the extracted data point
          datapoint_name: nil,
          # Value of the extracted data point. Can be a primitive type, an array of
          # primitives, or an array of objects when datapoint_list_type is 'object'.
          datapoint_value: nil
        )
        end

        sig do
          override.returns(
            {
              datapoint_name: String,
              datapoint_value:
                ContextDev::Models::AIAIQueryResponse::DataExtracted::DatapointValue::Variants
            }
          )
        end
        def to_hash
        end

        # Value of the extracted data point. Can be a primitive type, an array of
        # primitives, or an array of objects when datapoint_list_type is 'object'.
        module DatapointValue
          extend ContextDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Float,
                T::Boolean,
                T::Array[String],
                T::Array[Float],
                T::Array[T.anything]
              )
            end

          sig do
            override.returns(
              T::Array[
                ContextDev::Models::AIAIQueryResponse::DataExtracted::DatapointValue::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              ContextDev::Internal::Type::ArrayOf[String],
              ContextDev::Internal::Type::Converter
            )

          FloatArray =
            T.let(
              ContextDev::Internal::Type::ArrayOf[Float],
              ContextDev::Internal::Type::Converter
            )

          UnionMember5Array =
            T.let(
              ContextDev::Internal::Type::ArrayOf[
                ContextDev::Internal::Type::Unknown
              ],
              ContextDev::Internal::Type::Converter
            )
        end
      end
    end
  end
end
