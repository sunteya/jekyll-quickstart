class Jekyll::Site
  alias_method :origin_config, :config

  def config
    load_extra_config
    origin_config
  end

  def load_extra_config
    return if @loaded_extra_config
    @loaded_extra_config = true

    root = Dir.pwd
    file = File.join(root, "_config.extra.rb")
    return if !File.exist?(file)

    content = File.read(file)
    config = instance_eval(content, file, 0)
    self.config = Jekyll::Utils.deep_merge_hashes(self.config, config)
  end
end
