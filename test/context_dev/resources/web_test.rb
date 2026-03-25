# frozen_string_literal: true

require_relative "../test_helper"

class ContextDev::Test::Resources::WebTest < ContextDev::Test::ResourceTest
  def test_screenshot_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.web.screenshot(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::WebScreenshotResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        domain: String | nil,
        screenshot: String | nil,
        screenshot_type: ContextDev::Models::WebScreenshotResponse::ScreenshotType | nil,
        status: String | nil
      }
    end
  end

  def test_web_scrape_html_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.web.web_scrape_html(url: "https://example.com")

    assert_pattern do
      response => ContextDev::Models::WebWebScrapeHTMLResponse
    end

    assert_pattern do
      response => {
        html: String,
        success: ContextDev::Models::WebWebScrapeHTMLResponse::Success,
        url: String
      }
    end
  end

  def test_web_scrape_images_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.web.web_scrape_images(url: "https://example.com")

    assert_pattern do
      response => ContextDev::Models::WebWebScrapeImagesResponse
    end

    assert_pattern do
      response => {
        images: ^(ContextDev::Internal::Type::ArrayOf[ContextDev::Models::WebWebScrapeImagesResponse::Image]),
        success: ContextDev::Models::WebWebScrapeImagesResponse::Success,
        url: String
      }
    end
  end

  def test_web_scrape_md_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.web.web_scrape_md(url: "https://example.com")

    assert_pattern do
      response => ContextDev::Models::WebWebScrapeMdResponse
    end

    assert_pattern do
      response => {
        markdown: String,
        success: ContextDev::Models::WebWebScrapeMdResponse::Success,
        url: String
      }
    end
  end

  def test_web_scrape_sitemap_required_params
    skip("Mock server tests are disabled")

    response = @context_dev.web.web_scrape_sitemap(domain: "domain")

    assert_pattern do
      response => ContextDev::Models::WebWebScrapeSitemapResponse
    end

    assert_pattern do
      response => {
        domain: String,
        meta: ContextDev::Models::WebWebScrapeSitemapResponse::Meta,
        success: ContextDev::Models::WebWebScrapeSitemapResponse::Success,
        urls: ^(ContextDev::Internal::Type::ArrayOf[String])
      }
    end
  end
end
