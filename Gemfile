source 'https://rubygems.org'

rails_version = '4.2.4'
%w(railties activemodel actionview actionpack actionmailer).each do |name|
  gem name, rails_version
end

gem 'sqlite3'

gem 'rom', '~> 0.9.0'
gem 'rom-sql', '~> 0.6.0'
gem 'rom-rails', '~> 0.5.0'
gem 'rom-model', '~> 0.1.1'
gem 'rom-repository', '~> 0.1.0'

gem 'dry-container'
gem 'dry-auto_inject'

group :development, :test do
  gem 'byebug'
  gem 'figaro'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'poltergeist'
end

group :development do
  gem 'spring'
  gem 'rspec-rails'
end
