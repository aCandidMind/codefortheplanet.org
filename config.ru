# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# Enabling rack-canonical-host middleware gem, would prefer to place this in production.rb
# but the author documented its usage through the config.ru file
if Rails.env.production? && ENV['CANONICAL_HOST']
  use Rack::CanonicalHost, ENV['CANONICAL_HOST']
end

run Rails.application
