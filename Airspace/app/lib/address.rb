class Address
  attr_accessor :lat, :lng, :full_address, :distance

  def geocode
    search = Geocoder.search(full_address)
    place = search[0]

    if place.class.name == 'Geocoder::Result::GeocoderCa'
      self.lng = place.coordinates[1]
      self.lat = place.coordinates[0]
    end
  end

  def reverse_geocode
    search = Geocoder.search("#{lat},#{lng}")
    place = search[0]

    if place.class.name == 'Geocoder::Result::GeocoderCa'
      self.full_address = place.address
    end
  end

  def distance_between _coordinates
    Geocoder::Calculations.distance_between(coordinates, _coordinates).to_i
  end

  def set_distance_between _coordinates
    self.distance = distance_between _coordinates
  end

  def coordinates
    [lat,lng]
  end

  def miles_to place
    distance_between place.coordinates
  end

  def geocoded?
    true
  end

  def reverse_geocoded?
    true
  end
end