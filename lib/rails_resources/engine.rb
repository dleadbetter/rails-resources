Gem.loaded_specs['rails_resources'].dependencies.each do |d|
  require d.name unless d.type == :development
end

module RailsResources
  class Engine < ::Rails::Engine
    # Isolates models, controllers, and routes to prevent
    # namespace clashes with the host application.
    isolate_namespace RailsResources
  end
end
