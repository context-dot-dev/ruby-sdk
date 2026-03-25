# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::UtilityTest < ContextDev::Test::ResourceTest
  def test_prefetch_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.utility.prefetch(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::UtilityPrefetchResponse
    end

    assert_pattern do
      response => {
        domain: String | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_prefetch_by_email_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.utility.prefetch_by_email(email: "dev@stainless.com")

    assert_pattern do
      response => ContextDev::Models::UtilityPrefetchByEmailResponse
    end

    assert_pattern do
      response => {
        domain: String | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
