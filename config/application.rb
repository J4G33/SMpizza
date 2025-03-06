require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SMpizza
  class Application < Rails::Application
    config.load_defaults 7.2


    config.autoload_lib(ignore: %w[tasks])
  end
end
