# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

run Rails.application
