require File.expand_path("../assets.rb", __FILE__)

BOWER_RAILS_DIR = File.join(Dir.pwd, "vendor/assets/bower_components")
Sprockets.append_path(BOWER_RAILS_DIR)