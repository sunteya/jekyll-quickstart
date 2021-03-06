# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/quickstart/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-quickstart"
  spec.version       = Jekyll::Quickstart::VERSION
  spec.authors       = ["sunteya"]
  spec.email         = ["sunteya@gmail.com"]
  spec.summary       = %q{Quick start you jekyll project, integrate some gem, such as bundler, assets, etc. }
  spec.homepage      = "https://github.com/sunteya/jekyll-quickstart"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll"
  spec.add_dependency "jekyll-assets"

  # optional
  spec.add_development_dependency "compass"

  # test
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rails-assets-jquery"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "cocaine"
end
