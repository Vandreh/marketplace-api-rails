# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.3'
gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'
gem 'rswag-api'
gem 'rswag-ui'
gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'devise', '~> 4.9', '>= 4.9.4'
gem 'rack-cors'

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'ffaker', '~> 2.23'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.2'
  gem 'rswag-specs', '~> 2.13'
  gem 'rubocop', '~> 1.63', '>= 1.63.5'
end

group :test do
  gem 'shoulda-matchers', '~> 6.2'
  gem 'simplecov', '~> 0.22.0', require: false
end

group :development do
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
end
