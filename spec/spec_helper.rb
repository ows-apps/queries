# frozen_string_literal: true

require 'bundler/setup'
require 'ows/queries'
require 'pry'

APP_ROOT = File.expand_path('..', __dir__)

Dir["#{APP_ROOT}/spec/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
