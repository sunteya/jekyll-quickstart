require "jekyll/quickstart/version"
require "jekyll"
require "jekyll-assets"

module Jekyll
  module Quickstart
    def self.boot
      Dir[File.expand_path("../quickstart/*.rb", __FILE__)].each { |path| require path }
    end
  end
end
