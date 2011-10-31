# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "coordinates_transformations/version"

Gem::Specification.new do |s|
  s.name        = "coordinates_transformations"
  s.version     = CoordinatesTransformations::VERSION
  s.authors     = "Marc Essindi"
  s.email       = "marc.essindi@dunkelbraun.com"
  s.homepage    = "https://github.com/dunkelbraun/coordinates_transformations"
  s.summary     = "Point and UTM transformations for GeoKit."

#  s.rubyforge_project = "coordinates_transformations"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "json"
  s.add_dependency "geokit"
  s.add_dependency "georuby"
  s.add_dependency "geoutm"
  
  s.add_development_dependency "shoulda", '>= 3.0.0.beta'
  s.add_development_dependency "mocha"
  s.add_development_dependency "active_support", '>= 3.0'

end
