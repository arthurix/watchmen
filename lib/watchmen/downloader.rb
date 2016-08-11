module Watchmen
  class Downloader
    attr_reader :destination, :url, :scraper

    def initialize(url, destination)
      @url = url
      @destination = destination
    end

    def execute
      downloader
    end

    private

    def downloader
      page.images.each do |image|
        image.fetch.save absolute_path(image)
      end
    end

    def absolute_path(image)
      File.join(File.expand_path(destination),
                File.basename(url).slugify,
                File.basename(image.url.to_s))
    end

    def scraper
      @scraper ||= Mechanize.new
    end

    def page
      scraper.get(url)
    end
  end
end
