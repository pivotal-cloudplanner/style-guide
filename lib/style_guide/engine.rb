require "rails/engine"
require "style_guide/config"
require "style_guide/section"
require "style_guide/view"

module StyleGuide
  class Engine < ::Rails::Engine
    isolate_namespace StyleGuide
    config.style_guide = StyleGuide::Config.new
    config.i18n.load_path += Dir.glob(StyleGuide::Engine.root.join('config', 'locales', '*.{rb,yml}').to_s)
    config.i18n.default_locale = :en

    initializer "assets.paths.style_guide" do |app|
      app.config.assets.paths << File.expand_path(File.join("..", "..", "app", "assets"))
    end
  end
end
