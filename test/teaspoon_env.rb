require 'workarea/testing/teaspoon'

Teaspoon.configure do |config|
  config.root = Workarea::JqueryZoom::Engine.root
  Workarea::Teaspoon.apply(config)
end
