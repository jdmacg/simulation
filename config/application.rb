require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Simulation
  class Application < Rails::Application
    config.middleware.use Rack::Cors do
      allow do
        origins 'http://localhost:3000'
        resource %r{/users/\d+.json},
          :headers => ['Origin', 'Accept', 'Content-Type'],
          :methods => [:put, :delete, :get]
      end
    end
  end
end
