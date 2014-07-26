begin
  require "compass"
  require File.expand_path("../assets.rb", __FILE__)

  Compass.configuration do |config|
    site = Jekyll::Site.new(Jekyll.configuration({}))
    config.sprite_load_path = site.assets.paths.to_a

    image_pathname = Pathname.new(site.config['source']).join(site.assets_config.sources.last)
    image_pathname = image_pathname.relative_path_from(Pathname.pwd) if image_pathname.absolute?
    config.images_dir = image_pathname.to_s
  end

  class Sass::Script::Functions::EvaluationContext
    def generated_image_url(path)
      sprockets_context.environment.send(:trail).instance_variable_set("@entries", {}) # clear cache
      asset_url(path, Sass::Script::String.new("image"))
    end
  end
rescue LoadError => e
  # skip
end
