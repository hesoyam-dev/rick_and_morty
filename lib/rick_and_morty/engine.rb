require 'rails/engine'

module RickAndMorty
  class Engine < ::Rails::Engine
    isolate_namespace RickAndMorty
  end
end
