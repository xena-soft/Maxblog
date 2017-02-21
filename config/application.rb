require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Maxblog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    config.eager_load_paths << Rails.root.join('lib')
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
