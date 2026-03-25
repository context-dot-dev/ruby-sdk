# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::AITest < ContextDev::Test::ResourceTest
  def test_ai_query_required_params
    skip("Mock server tests are disabled")

    response =
      @context_dev.ai.ai_query(
        data_to_extract: [
          {
            datapoint_description: "datapoint_description",
            datapoint_example: "datapoint_example",
            datapoint_name: "datapoint_name",
            datapoint_type: :text
          }
        ],
        domain: "domain"
      )

    assert_pattern do
      response => ContextDev::Models::AIAIQueryResponse
    end

    assert_pattern do
      response => {
        data_extracted: ^(ContextDev::Internal::Type::ArrayOf[ContextDev::Models::AIAIQueryResponse::DataExtracted]) | nil,
        domain: String | nil,
        status: String | nil,
        urls_analyzed: ^(ContextDev::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_extract_product_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.ai.extract_product(url: "https://example.com")

    assert_pattern do
      response => ContextDev::Models::AIExtractProductResponse
    end

    assert_pattern do
      response => {
        is_product_page: ContextDev::Internal::Type::Boolean | nil,
        platform: ContextDev::Models::AIExtractProductResponse::Platform | nil,
        product: ContextDev::Models::AIExtractProductResponse::Product | nil
      }
    end
  end

  def test_extract_products_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.ai.extract_products(body: {domain: "domain"})

    assert_pattern do
      response => ContextDev::Models::AIExtractProductsResponse
    end

    assert_pattern do
      response => {
        products: ^(ContextDev::Internal::Type::ArrayOf[ContextDev::Models::AIExtractProductsResponse::Product]) | nil
      }
    end
  end
end
