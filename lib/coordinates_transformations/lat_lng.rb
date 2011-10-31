module CoordinatesTransformations

  module LatLng

    # Transforms self into a GeoUtm::UTM
    def to_utm
     GeoUtm::LatLon.new(self.lat, self.lng).to_utm
    end

    # Transforms self into a GeoRuby::SimpleFeatures::Point
    def to_point
      utm_position = self.to_utm
      GeoRuby::SimpleFeatures::Point.from_x_y(utm_position.e, utm_position.n)
    end

  end

end