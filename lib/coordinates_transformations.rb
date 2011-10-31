require 'geokit'
require 'geo_ruby'
require 'geoutm'

require "coordinates_transformations/version"
require "coordinates_transformations/lat_lng"
require "coordinates_transformations/bounds"


module GeoKit # :nodoc:
  
  class LatLng # :nodoc:
    include CoordinatesTransformations::LatLng
  end

  class Bounds # :nodoc:
    include CoordinatesTransformations::Bounds
  end

end


