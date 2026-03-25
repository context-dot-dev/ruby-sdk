# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::StyleTest < ContextDev::Test::ResourceTest
  def test_extract_fonts_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.style.extract_fonts(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::StyleExtractFontsResponse
    end

    assert_pattern do
      response => {
        code: Integer,
        domain: String,
        fonts: ^(ContextDev::Internal::Type::ArrayOf[ContextDev::Models::StyleExtractFontsResponse::Font]),
        status: String
      }
    end
  end

  def test_extract_styleguide
    skip("Mock server tests are disabled")

    response = @context_dev.style.extract_styleguide

    assert_pattern do
      response => ContextDev::Models::StyleExtractStyleguideResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        domain: String | nil,
        status: String | nil,
        styleguide: ContextDev::Models::StyleExtractStyleguideResponse::Styleguide | nil
      }
    end
  end
end
