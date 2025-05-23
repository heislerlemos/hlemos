#Coffee::Rails::TemplateHandler.call(template, source)


require_relative 'boot'

require 'rails/all'




# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hlemos
  class Application < Rails::Application
    #config.autoload_paths += %W(#{config.root}/lib)
    #config.autoload_paths << Rails.root.join('lib')
    #config.eager_load_paths << Rails.root.join('lib')
    config.eager_load_paths << config.root / 'lib'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.paths << "#{Rails.root}/app/assets/videos"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    #config.encoding = "ASCII-8BIT"
end
end
