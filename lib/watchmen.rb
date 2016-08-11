require 'mechanize'
require 'slugify'
require 'watchmen/version'
require 'watchmen/downloader'

module Watchmen
  extend module_function

  def download(url, destination)
    Watchmen::Downloader.new(url, destination).execute
  end
end
