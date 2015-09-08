require 'rack/unreloader'

Unreloader = Rack::Unreloader.new(subclasses: %w[Roda]) { Roblog.app }
Unreloader.require 'roblog.rb'

if ENV['RACK_ENV'] == 'development'
  run Unreloader
else
  run Roblog.app
end
