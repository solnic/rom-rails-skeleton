ENV['RAILS_ENV'] ||= 'test'

require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

require 'capybara/rspec'
require 'capybara/poltergeist'

Dir[Rails.root.join('spec/support/*.rb')].each { |f| require f }
Dir[Rails.root.join('spec/shared/*.rb')].each { |f| require f }

require 'database_cleaner'

def clean_db
  DatabaseCleaner[:sequel, connection: conn].clean_with(:truncation)
end

def conn
  ROM::SQL.gateway.connection
end

RSpec.configure do |config|
  config.include(MyAppHelper)

  config.before(:suite) do
    `rake db:migrate`
    DatabaseCleaner[:sequel, connection: conn].strategy = :truncation
    clean_db
  end

  config.before(:each) { clean_db }
end
