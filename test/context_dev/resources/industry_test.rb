# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::IndustryTest < ContextDev::Test::ResourceTest
  def test_retrieve_naics_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.industry.retrieve_naics(input: "input")

    assert_pattern do
      response => ContextDev::Models::IndustryRetrieveNaicsResponse
    end

    assert_pattern do
      response => {
        codes: ^(ContextDev::Internal::Type::ArrayOf[ContextDev::Models::IndustryRetrieveNaicsResponse::Code]) | nil,
        domain: String | nil,
        status: String | nil,
        type: String | nil
      }
    end
  end
end
