# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::BrandTest < ContextDev::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_identify_from_transaction_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.identify_from_transaction(transaction_info: "transaction_info")

    assert_pattern do
      response => ContextDev::Models::BrandIdentifyFromTransactionResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandIdentifyFromTransactionResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_email_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve_by_email(email: "dev@stainless.com")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveByEmailResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveByEmailResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_isin_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve_by_isin(isin: "SE60513A9993")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveByIsinResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveByIsinResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_name_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve_by_name(name: "xxx")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveByNameResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveByNameResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_ticker_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve_by_ticker(ticker: "ticker")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveByTickerResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveByTickerResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_simplified_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.brand.retrieve_simplified(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::BrandRetrieveSimplifiedResponse
    end

    assert_pattern do
      response => {
        brand: ContextDev::Models::BrandRetrieveSimplifiedResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end
end
