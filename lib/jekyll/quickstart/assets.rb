Gem.loaded_specs.each_pair do |name, spec|
  Dir[File.join(spec.full_gem_path, "vendor/assets/*")].each do |path|
    Sprockets.append_path(path)
  end

  Dir[File.join(spec.full_gem_path, "app/assets/*")].each do |path|
    Sprockets.append_path(path)
  end
end
