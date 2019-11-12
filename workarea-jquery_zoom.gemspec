$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/jquery_zoom/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-jquery_zoom"
  s.version     = Workarea::JqueryZoom::VERSION
  s.authors     = ["Jeremie Ges"]
  s.email       = ["jges@weblinc.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-jquery-zoom"
  s.summary     = "Add image zoom capabilities on touch enabled devices."
  s.description = "Let your user pinch, drag and tap (zoom-in, zoom-out) your beautiful thumbnails."

  s.files = `git ls-files`.split("\n")

  s.add_dependency 'workarea', '~> 3.x'
  s.add_dependency 'hammerjs-rails'

  s.license = 'Business Software License'
end
