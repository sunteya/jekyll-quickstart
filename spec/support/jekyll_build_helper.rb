require "cocaine"

module JekyllBuildHelper
  extend ActiveSupport::Concern

  def jekyll_build
    jekyll_clean
    Dir.chdir(jekyll_root) do
      Cocaine::CommandLine.new("bundle", "exec jekyll build").run
    end
  end

  def jekyll_clean
    FileUtils.rm_rf jekyll_destination
  end

  def jekyll_destination
    jekyll_root.join("_site")
  end
end

RSpec.configure do |config|
  config.include JekyllBuildHelper
end
