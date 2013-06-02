module ApplicationHelper

  def distance_between(lat1, long1, lat2, long2)
    Geocoder::Calculations.distance_between([lat1, long1], [lat2, long2])
  end
end
