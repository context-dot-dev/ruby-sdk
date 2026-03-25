# typed: strong

module ContextDev
  module Resources
    class Web
      # Capture a screenshot of a website. Supports both viewport (standard browser
      # view) and full-page screenshots. Can also screenshot specific page types (login,
      # pricing, etc.) by using heuristics to find the appropriate URL. Returns a URL to
      # the uploaded screenshot image hosted on our CDN.
      sig do
        params(
          domain: String,
          full_screenshot:
            ContextDev::WebScreenshotParams::FullScreenshot::OrSymbol,
          page: ContextDev::WebScreenshotParams::Page::OrSymbol,
          prioritize: ContextDev::WebScreenshotParams::Prioritize::OrSymbol,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::WebScreenshotResponse)
      end
      def screenshot(
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page.
        page: nil,
        # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
        # faster capture with basic quality. If 'quality', optimizes for higher quality
        # with longer wait times. Defaults to 'quality' if not provided.
        prioritize: nil,
        request_options: {}
      )
      end

      # Scrapes the given URL and returns the raw HTML content of the page. Uses
      # automatic proxy escalation to handle blocked sites.
      sig do
        params(
          url: String,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::WebWebScrapeHTMLResponse)
      end
      def web_scrape_html(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        request_options: {}
      )
      end

      # Scrapes all images from the given URL. Extracts images from img, svg,
      # picture/source, link, and video elements including inline SVGs, base64 data
      # URIs, and standard URLs.
      sig do
        params(
          url: String,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::WebWebScrapeImagesResponse)
      end
      def web_scrape_images(
        # Full URL to scrape images from (must include http:// or https:// protocol)
        url:,
        request_options: {}
      )
      end

      # Scrapes the given URL, converts the HTML content to GitHub Flavored Markdown
      # (GFM), and returns the result. Uses automatic proxy escalation to handle blocked
      # sites.
      sig do
        params(
          url: String,
          include_images: T::Boolean,
          include_links: T::Boolean,
          shorten_base64_images: T::Boolean,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::WebWebScrapeMdResponse)
      end
      def web_scrape_md(
        # Full URL to scrape and convert to markdown (must include http:// or https://
        # protocol)
        url:,
        # Include image references in Markdown output
        include_images: nil,
        # Preserve hyperlinks in Markdown output
        include_links: nil,
        # Shorten base64-encoded image data in the Markdown output
        shorten_base64_images: nil,
        request_options: {}
      )
      end

      # Crawls the sitemap of the given domain and returns all discovered page URLs.
      # Supports sitemap index files (recursive), parallel fetching with concurrency
      # control, deduplication, and filters out non-page resources (images, PDFs, etc.).
      sig do
        params(
          domain: String,
          request_options: ContextDev::RequestOptions::OrHash
        ).returns(ContextDev::Models::WebWebScrapeSitemapResponse)
      end
      def web_scrape_sitemap(
        # Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
        # automatically normalized and validated.
        domain:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ContextDev::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
