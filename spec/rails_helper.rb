# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'shoulda/matchers'
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

rails_suport_path = Rails.root.join('spec', 'suport', '**', '*.rb')
Dir[rails_suport_path].each { |file| require file } # inline
# Multiline: Dir[rails_suport_path].each do |file|
#   require file
# end

if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
  puts 'required simplecov'
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end
RSpec.configure do |config|
  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
