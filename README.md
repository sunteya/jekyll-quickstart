# Jekyll::Quickstart

[![Build Status](https://travis-ci.org/sunteya/jekyll-quickstart.svg?branch=master)](https://travis-ci.org/sunteya/jekyll-quickstart)

integrate jekyll-assets, compass, bower_rails and some useful helper to jekyll project.

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll-quickstart'

## Usage

1. Add the following content to the jekyll `_plugins` directory, name `_quickstart.rb`

   ~~~~ruby
   Bundler.require
   Jekyll::Quickstart.boot
   ~~~~

2. If you want to use ruby style config file, you need to add `_config.extra.rb` to the root directory. it must return a *Hash* object.

3. For more details, see the spec directory

## Contributing

1. Fork it ( https://github.com/sunteya/jekyll-quickstart/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
