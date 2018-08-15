$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rick_and_morty/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rick_and_morty"
  s.version     = RickAndMorty::VERSION
  s.authors     = ["Oleh Budurovych"]
  s.email       = ["oleh_budurovych@epam.com"]
  s.homepage    = "https://github.com/oleg1998/rick_and_morty"
  s.summary     = "Summary of RickAndMorty."
  s.description = "Description of RickAndMorty."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
end
