require 'test_helper'

class LatLngTest < ActiveSupport::TestCase

  def setup
    @location = GeoKit::LatLng.new(41.38676, 1.93205)
  end

  test "latlng to utm location transformation" do
    utm_location = @location.to_utm
    assert_in_delta 410710.177361338, utm_location.e, 0.001
    assert_in_delta 4582242.73580142, utm_location.n, 0.001
  end

  test "latlng to point transformation" do
    point = @location.to_point    
    assert_in_delta 410710.177361338, point.x, 0.001
    assert_in_delta 4582242.73580142, point.y, 0.001
  end

end