require 'test_helper'

class GeoKitAdditionsTest < ActiveSupport::TestCase

  def setup
    @region = GeoKit::Bounds.from_point_and_radius(GeoKit::LatLng.new(41.38676, 1.93205), 20, {:units => :kms})
  end
 
  test "region to utm transformation" do    
    utm_region = @region.to_utm
    assert_in_delta 390383.574244734, utm_region[0].e, 0.00001
    assert_in_delta 4562566.95145292, utm_region[0].n, 0.00001
    assert_in_delta 430927.142061895, utm_region[1].e, 0.00001
    assert_in_delta 4601974.09517355, utm_region[1].n, 0.00001
  end
  
  test "region to multipoint transformation" do
    multipoint = @region.to_multipoint
    assert_in_delta 390383.574244734, multipoint.geometries[0].x, 0.00001
    assert_in_delta 4562566.95145292, multipoint.geometries[0].y, 0.00001
    assert_in_delta 430927.142061895, multipoint.geometries[1].x, 0.00001
    assert_in_delta 4601974.09517355, multipoint.geometries[1].y, 0.00001
  end

end
