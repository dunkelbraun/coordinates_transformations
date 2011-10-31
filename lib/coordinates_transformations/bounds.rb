module CoordinatesTransformations

  module Bounds

    # Converts self into an array of southwest and northeast GeoUtm::UTM
    def to_utm
     [self.sw.to_utm, self.ne.to_utm]
    end

    # Converts self into a GeoRuby::SimpleFeatures::MultiPoint
    def to_multipoint
      point1, point2 = self.to_utm 
      GeoRuby::SimpleFeatures::MultiPoint.from_coordinates([ [ point1.e, point1.n ], [ point2.e, point2.n ] ])
    end

  end

end