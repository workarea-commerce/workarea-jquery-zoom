module Workarea
  module JqueryZoom
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::JqueryZoom
      require 'hammerjs-rails'
    end
  end
end
