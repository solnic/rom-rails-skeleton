require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"

Bundler.setup(*Rails.groups)

require 'rom-rails'
require 'rom'
require 'rom-sql'
require 'rom-repository'

unless Rails.env.production?
  require 'rspec-rails'
  require 'figaro'
end

module RomRailsSkeleton
  class Application < Rails::Application
    require 'my_app'
  end
end
